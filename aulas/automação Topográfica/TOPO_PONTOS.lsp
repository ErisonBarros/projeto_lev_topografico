;;; TOPO_PONTOS.lsp
;;; Rotina didática para a aula de Automatização de Desenhos Técnicos.
;;; Entrada esperada: CSV com ID,X,Y,Z,CODIGO,DESCRICAO.
;;; Limitações didáticas: não interpreta campos CSV entre aspas e não conecta
;;; automaticamente os pontos, pois a conectividade deve ser definida pelo projeto.

(vl-load-com)

(defun topo:split (texto separador / pos inicio partes)
  ;; Divide uma string por um separador simples.
  (setq inicio 1)
  (while (setq pos (vl-string-search separador texto (1- inicio)))
    (setq partes (cons (substr texto inicio (- pos (1- inicio))) partes))
    (setq inicio (+ pos 2))
  )
  (reverse (cons (substr texto inicio) partes))
)

(defun topo:trim (texto)
  (vl-string-trim " \t\r\n" texto)
)

(defun topo:numero (texto)
  ;; DISTOF retorna NIL quando não consegue interpretar o número.
  (distof (topo:trim texto) 2)
)

(defun topo:garantir-layer (nome cor)
  ;; Cria o layer somente se ele ainda não existir.
  (if (not (tblsearch "LAYER" nome))
    (entmake
      (list
        '(0 . "LAYER")
        '(100 . "AcDbSymbolTableRecord")
        '(100 . "AcDbLayerTableRecord")
        (cons 2 nome)
        '(70 . 0)
        (cons 62 cor)
        (cons 6 "Continuous")
      )
    )
  )
)

(defun topo:layer-por-codigo (codigo)
  (cond
    ((= (strcase codigo) "PV") "TOPO_POSTE")
    ((= (strcase codigo) "ED") "TOPO_EDIFICACAO")
    (T "TOPO_REVISAR")
  )
)

(defun topo:criar-ponto (ponto)
  (entmake
    (list
      '(0 . "POINT")
      (cons 8 "TOPO_PONTOS")
      (cons 10 ponto)
    )
  )
)

(defun topo:criar-texto (layer ponto altura conteudo)
  (entmake
    (list
      '(0 . "TEXT")
      (cons 8 layer)
      (cons 10 ponto)
      (cons 40 altura)
      (cons 1 conteudo)
      (cons 7 "Standard")
    )
  )
)

(defun topo:linha-quadro (base linha texto)
  ;; Cria uma linha textual de um quadro didático no próprio desenho.
  (topo:criar-texto
    "TOPO_QUADRO"
    (list (car base) (- (cadr base) (* linha 2.0)) 0.0)
    1.0
    texto
  )
)

(defun c:TOPO_PONTOS (/ *error* arquivo handle cabecalho linha campos id x y z codigo descricao ponto layer
                         processados rejeitados linha-quadro base oldlayer)
  (setq oldlayer (getvar "CLAYER"))

  (defun *error* (mensagem)
    (if handle (close handle))
    (setvar "CLAYER" oldlayer)
    (princ (strcat "\nErro: " mensagem))
    (princ)
  )

  (setq arquivo (getfiled "Selecione PONTOS.csv" "" "csv" 0))

  (if arquivo
    (progn
      (topo:garantir-layer "TOPO_PONTOS" 7)
      (topo:garantir-layer "TOPO_ID" 2)
      (topo:garantir-layer "TOPO_COTAS" 3)
      (topo:garantir-layer "TOPO_DESC" 4)
      (topo:garantir-layer "TOPO_POSTE" 1)
      (topo:garantir-layer "TOPO_EDIFICACAO" 5)
      (topo:garantir-layer "TOPO_REVISAR" 6)
      (topo:garantir-layer "TOPO_QUADRO" 7)

      (setq handle (open arquivo "r"))
      (setq cabecalho (read-line handle))
      (setq processados 0 rejeitados 0 linha-quadro 0 base nil)

      (while (setq linha (read-line handle))
        (if (> (strlen (topo:trim linha)) 0)
          (progn
            (setq campos (topo:split linha ","))
            (if (>= (length campos) 6)
              (progn
                (setq id (topo:numero (nth 0 campos)))
                (setq x (topo:numero (nth 1 campos)))
                (setq y (topo:numero (nth 2 campos)))
                (setq z (topo:numero (nth 3 campos)))
                (setq codigo (topo:trim (nth 4 campos)))
                (setq descricao (topo:trim (nth 5 campos)))

                (if (and id x y z (> (strlen codigo) 0) (> (strlen descricao) 0))
                  (progn
                    (setq ponto (list x y z))
                    (setq layer (topo:layer-por-codigo codigo))
                    (if (not base) (setq base (list (+ x 20.0) y 0.0)))

                    (topo:criar-ponto ponto)
                    (topo:criar-texto "TOPO_ID" (list (+ x 1.0) (+ y 1.0) z) 1.0 (rtos id 2 0))
                    (topo:criar-texto "TOPO_COTAS" (list (+ x 1.0) y z) 1.0 (rtos z 2 2))
                    (topo:criar-texto "TOPO_DESC" (list (+ x 1.0) (- y 1.0) z) 1.0 descricao)
                    (topo:criar-texto layer (list (+ x 2.0) (+ y 2.0) z) 0.8 codigo)
                    (topo:linha-quadro base linha-quadro
                      (strcat (rtos id 2 0) " | " (rtos x 2 3) " | " (rtos y 2 3) " | " (rtos z 2 2) " | " codigo))

                    (setq linha-quadro (1+ linha-quadro))
                    (setq processados (1+ processados))
                  )
                  (progn
                    (setq rejeitados (1+ rejeitados))
                    (prompt "\nLinha rejeitada: campos ausentes ou numéricos inválidos.")
                  )
                )
              )
              (progn
                (setq rejeitados (1+ rejeitados))
                (prompt "\nLinha rejeitada: número de campos inferior a 6.")
              )
            )
          )
        )
      )

      (close handle)
      (setq handle nil)
      (setvar "CLAYER" oldlayer)
      (prompt (strcat "\nTOPO_PONTOS concluído. Processados: " (itoa processados)
                      "; rejeitados: " (itoa rejeitados) "."))
    )
    (prompt "\nNenhum arquivo foi selecionado.")
  )
  (princ)
)

(princ "\nRotina carregada. Digite TOPO_PONTOS para executar.")
(princ)
