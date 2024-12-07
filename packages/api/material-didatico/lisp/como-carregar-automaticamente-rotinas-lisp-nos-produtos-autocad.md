# 🚩 Como carregar automaticamente rotinas LISP nos produtos AutoCAD



> ### Excerpt
>
> **Questão** Como fazer com que as rotinas do AutoLISP sejam carregadas automaticamente ao se iniciar o AutoCAD ou os Conjuntos de Ferramentas do AutoCAD. Isso se aplica tanto à inicialização do software quanto à abertura de um desenho. Isso é necessário porque as rotinas precisam ser recarregadas manualmente toda vez que o programa é iniciado. Solução: Adicionar à inicialização Execute o comando CARRAPLIC. Em Conjunto de inicialização, clique no botão Conteúdo. Clique no botão Adicionar

***

### Adicionar à inicialização

1. Execute o [comando CARRAPLIC](https://help.autodesk.com/cloudhelp/2022/ENU/AutoCAD-Core/files/GUID-47621BB1-F29D-4A69-9C99-A6E1495FBA38.htm).
2. Em _Conjunto de inicialização_, clique no botão _Conteúdo_.
3. Clique no botão _Adicionar_.
4. Vá até o local do arquivo LISP, selecione-o e clique no botão _Abrir_.
5. Depois que todas as rotinas LISP tiverem sido adicionadas ao Conjunto de inicialização, clique no botão _Fechar_.
6. Clique novamente em _Fechar_ para fechar a caixa de diálogo Carregar/descarregar aplicativos.

### Carregar com o CUI

1. Execute [CUI (comando)](https://help.autodesk.com/cloudhelp/2022/ENU/AutoCAD-Core/files/GUID-7F8F4B26-EFAF-4033-B7B7-CA39FC4E104A.htm).
2. Selecione "acad.cuix" (ou um arquivo parcial .cuix personalizado).
3. Selecione _Arquivos LISP_ e clique com o botão direito do mouse.
4. Selecione _Carregar LISP_ no menu de contexto.
5. Acesse a localização do LISP para adicionar e selecionar o arquivo.
6. Clique em Aplicar e em Fechar para sair do editor CUI.

### ![Carregar rotinas LISP usando o CUI](https://help.autodesk.com/sfdcarticles/img/0EM3g000001SRCo)

### Usar os arquivos acad.lsp/acaddoc.lsp

O arquivo _acad.lsp_ sempre é carregado quando o AutoCAD é iniciado. Um arquivo _acaddoc.lsp_ é executado sempre que um desenho é aberto. Se uma função especial, S::STARTUP, for definida no arquivo _acad.lsp_, ela será executada.

* [Ajuda do AutoCAD 2024 | Sobre carregar automaticamente e executar rotinas do AutoLISP](https://help.autodesk.com/view/ACD/2024/ENU/?guid=GUID-FDB4038D-1620-4A56-8824-D37729D42520)

#### Exemplo

Pense nas duas rotinas do AutoLISP denominadas _stair.lsp_ e _wall.lsp_, que são carregadas cada vez que o AutoCAD for executado. Crie um arquivo _acad.lsp_ que contenha as linhas de código a seguir e coloque-o nos caminhos de suporte do AutoCAD.

```
(defun s::startup ()
(load "STAIR.LSP")
(load "WALL.LSP")
)
```

Se _wall.lsp_ e _stair.lsp_ estiverem no caminho de busca do AutoCAD, serão automaticamente carregados quando você iniciar o AutoCAD: Se as rotinas do AutoLISP não estiverem nos caminhos de suporte do AutoCAD, inclua o caminho completo no arquivo _acad.lsp_. Utilize "/" ou "\\\\" como delimitadores de caminho. Com o mesmo exemplo, o arquivo _acad.lsp_ deve ter este aspecto:

```
(defun s::startup ()
(load "C:/PROG/LISP/STAIR.LSP")
(load "C:\\PROG\\LISP\\WALL.LSP")
)
```

Se a função S::STARTUP for definida assim, talvez haja problemas se ela for usada por outros aplicativos (por exemplo, um aplicativo de terceiros). Para garantir a compatibilidade, anexe o código se já existir uma função S::STARTUP. Para isso, adicione o seguinte código a:

```
(defun mystartup ()
(load "C:/PROG/LISP/STAIR.LSP")
(load "C:\\PROG\\LISP\\WALL.LSP")
)
(if s::startup
(setq s::startup (append s::startup (quote ((mystartup)))))
(defun s::startup () (mystartup))
)
```
