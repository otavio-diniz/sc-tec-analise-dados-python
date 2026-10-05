# Método pedagógico

## Princípio central

O material é organizado para **aprendizagem progressiva**, não para reproduzir a ordem cronológica das aulas.

A pergunta de organização é:

> **O que uma pessoa iniciante precisa compreender primeiro para que o próximo conceito faça sentido?**

## Guias Vivos

Os Guias explicam conceitos, sintaxe, leitura de código e interpretação de resultados. Exemplos aparecem antes dos checkpoints.

Cada checkpoint é um pequeno gate de compreensão. Ele deve cobrar somente o que foi explicado anteriormente.

Quando um checkpoint fica cognitivamente denso, ele pode ser subdividido sem necessariamente criar um novo Guia.

## Cadernos Práticos

Cada Caderno espelha o Guia correspondente.

A sequência típica é:

**enunciado → tentativa → execução → explicação/solução → ponto de aprendizagem**

Os exercícios são sintéticos e não constituem avaliação formal do curso.

## Google Colab e VS Code

A validação pedagógica é feita sobre o conteúdo conceitual. As versões Colab e VS Code devem preservar esse mesmo conteúdo.

Podem mudar:

- instruções de ambiente;
- seleção de kernel/interpretador;
- forma de localizar arquivos;
- observações de execução.

Não deve mudar apenas por troca de plataforma:

- conceito;
- progressão;
- exemplo essencial;
- checkpoint;
- objetivo do exercício.

## Explicações orais também são fonte pedagógica

Ao revisar transcrições, não são coletados apenas títulos e comandos. Também são considerados:

- diferenças explicadas oralmente, como `/` × `//` × `%`;
- dúvidas reais;
- correções de indentação e lógica;
- interpretação de frases de negócio;
- exemplos improvisados;
- alertas sobre erros frequentes;
- critérios de leitura e interpretação do resultado.

Quando esses pontos ajudam a compreensão, são convertidos em exemplos, notas ou Dicas de Ouro.

## Complemento de apoio

Um recurso útil, mas não identificado nas aulas/exercícios do corte, recebe a marca **(complemento de apoio)**.

Complementos:

- não são mascarados como conteúdo já trabalhado;
- não são cobrados como requisito de checkpoint;
- podem ter exercícios opcionais;
- podem deixar de ser complemento se nova fonte comprovar sua presença nas aulas.

## Aprender não é decorar

O estudante deve ser capaz de:

1. ler o código;
2. explicar o papel de cada parte;
3. prever aproximadamente o resultado;
4. identificar mensagens de erro básicas;
5. reconhecer qual ferramenta faz sentido para o problema;
6. interpretar a saída;
7. consultar documentação, exemplos e IA com senso crítico.

## Pandas: leitura antes de automação

No eixo Pandas, o fluxo mental adotado é:

**carregar → inspecionar/perfilar → selecionar → limpar/padronizar → transformar → analisar → interpretar/comunicar**

Cada conceito procura seguir:

**o que é → como ler a sintaxe → exemplo → comparação → resultado → interpretação → validação**

Algumas leituras recorrentes:

- **atribuição:** resolver a expressão à direita e depois guardar à esquerda;
- **encadeamento:** acompanhar o objeto da esquerda para a direita;
- **expressão interna:** entender primeiro o que é entregue à função externa.

Tipos como `int64`, `float64`, `object/string`, `datetime64[ns]` e `NaT` são explicados pelo significado operacional necessário ao iniciante antes de aprofundamentos internos.

Limpeza não é automática. Valores ausentes, duplicidades e categorias inconsistentes devem ser investigados no contexto antes de exclusão ou substituição.
