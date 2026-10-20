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

## Aprendizagem em espiral

Além da progressão por dependência cognitiva, o material usa um ciclo de retomada:

**primeiro contato → prática → retorno → recuperação → aprofundamento**

Por isso, conceitos anteriores reaparecem em novos contextos. Blocos **🔁 Você já viu isso** e revisões acumulativas ajudam o estudante a reconstruir conhecimento sem transformar o Guia em repetição integral.

## Critérios de domínio

Quando aplicável, um checkpoint procura desenvolver três dimensões:

- **COMPREENDER:** explicar o conceito em linguagem natural;
- **EXECUTAR:** aplicar o conceito em código;
- **DIAGNOSTICAR:** reconhecer erro, resultado estranho ou uso inadequado.

## Biblioteca Viva

A Biblioteca Viva é uma camada de consulta transversal. Ela não substitui os Guias nem define uma segunda sequência curricular.

Cada entrada prioriza:
- o que é;
- como ler;
- quando aparece;
- erro comum;
- conexão com outros conceitos.

Há versões Colab e VS Code com o mesmo corpo conceitual. Só as orientações operacionais de ambiente são diferenciadas.

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

## V1.1: fronteira acadêmica e eixos atualizados

A evolução de v1.0.1 para v1.1 preserva a trilha inicial de Fundamentos, Desenvolvimento e Pandas, introduzindo **NumPy como quarto eixo**. O recorte principal ampliado é composto pelas aulas técnicas **06, 08 e 09/10/2026** e pelo aulão de revisão **10/10**. As aulas documentadas **15 e 16/10** sustentam a antecipação autorizada de NumPy e parte do aprofundamento de Pandas. Não se deve inferir que slides de planejamento, aulas futuras ou material do mini-projeto já tenham sido ministrados.

**Novo Checkpoint 6 — Desenvolvimento:** módulos `.py`, `import`, funções com contratos, pipelines, diagnóstico e relatórios.
**Novos Checkpoints 8/9 — Pandas:** junções por chave e cardinalidade; métricas, agrupamentos, tabelas-resumo e interpretação responsável.
**Guia/Caderno 04 — NumPy:** CP1 arrays/forma, CP2 vetorização/máscaras, CP3 matrizes/eixos, CP4 broadcasting e CP5 NumPy–Pandas/`np.where`.

### NumPy: cuidado com o significado das operações

Antes de operar com arrays, identifique o significado de cada eixo e verifique o `shape`. A escolha `axis=0` ou `axis=1` pode devolver números válidos, mas responder à pergunta errada. Broadcasting alinha **posições e dimensões**, não os nomes comerciais ou de pessoas. Para inferência e classificação, separe código da regra de negócio; as faixas numéricas usadas em exemplos didáticos **não são critérios oficiais do curso**.

No Caderno 04, cada exercício autoral deve continuar a sequência **previsão → tentativa → execução → diagnóstico → solução comentada → recuperação**. A referência para resolução de um mini-projeto acadêmico é apenas **metodológica**; o trabalho avaliativo deve ser realizado pelo estudante.

### Verificação técnica e evidência

A conferência estrutural de arquivos `.ipynb`, a coincidência dos novos blocos Colab↔VS Code e a publicação em GitHub **não comprovam execução real das células** nem resultado do estudante. O ambiente deve ter kernel e bibliotecas apropriados; não se altera o sistema operacional ou instala software como parte da autoria pedagógica. Erros encontrados em execução precisam ser registrados e corrigidos em revisão posterior, sem declarar teste inexistente.

## Versionamento pedagógico

As atualizações são agrupadas em janelas estáveis, em vez de alterar a baseline a cada nova aula.

Uma nova versão deve deixar claro:
- qual corte de fontes está coberto;
- o que foi incluído;
- o que foi melhorado;
- o que foi corrigido;
- o que foi reorganizado.

Correções e enriquecimentos que não ampliam a fronteira acadêmica podem ser publicados como versões de patch. Expansões de conteúdo exigem nova reconciliação do conjunto de fontes antes da promoção.

## Avaliações comentadas

As avaliações comentadas ficam em [`avaliacoes/`](../avaliacoes/), com versões M1S02 ([Colab](../avaliacoes/colab/m1s02_avaliacao_comentada.ipynb), [VS Code](../avaliacoes/vscode/m1s02_avaliacao_comentada.ipynb)) e M1S03 ([Colab](../avaliacoes/colab/m1s03_avaliacao_comentada.ipynb), [VS Code](../avaliacoes/vscode/m1s03_avaliacao_comentada.ipynb)), distintas dos exercícios autorais de `exercicios/`. São materiais didáticos de análise de questões contextualizadas, não provas formais nem registros de resultado individual.

A sequência é **enunciado e alternativas → análise conceitual → Dica de Ouro → laboratório executável → compare/diagnostique/pratique → resolução comentada → recuperação ativa → gabarito final**. A resolução vem depois da tentativa, para preservar a reflexão antes da resposta. Os dois ambientes usam o mesmo corpo conceitual e exemplos equivalentes, com instruções operacionais próprias.
