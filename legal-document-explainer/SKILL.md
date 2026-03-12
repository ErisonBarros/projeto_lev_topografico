---
name: legal-document-explainer
description: Analisa documentos jurídicos (contratos, termos, etc.), resume em linguagem simples e destaca cláusulas problemáticas e riscos. Certifique-se de usar esta skill sempre que o usuário mencionar contratos, termos de serviço, políticas de privacidade, locação ou pedir para analisar qualquer documento legal, mesmo que não peça explicitamente por um "explainer" ou "resumo jurídico".
---

# Legal Document Explainer

Esta skill permite analisar documentos jurídicos e fornecer:
1. Um resumo em linguagem simples.
2. Destaque de cláusulas problemáticas (multas, renovação automática, coleta de dados, etc.).
3. Placar de Risco (Baixo, Médio ou Alto).
4. Perguntas práticas que o usuário deveria fazer antes de assinar.

## Como usar

Quando o usuário enviar o conteúdo de um documento:
1. Extraia o texto relevante.
2. Revise as referências em `references/` para identificar bandeiras vermelhas e classificar o risco.
3. Preencha o template em `assets/report-template.md` com os resultados da análise.
4. Utilize `assets/quick-reference.md` para fornecer dicas práticas finais ao usuário.
