# Fontes e escopo

## Natureza do material

Este repositório contém material autoral de estudo de Otávio Diniz. Ele sintetiza e reorganiza conhecimentos estudados no curso **SC TEC — Análise de Dados com Python**, apoiando-se em aulas, transcrições, materiais disponibilizados e exemplos apresentados no contexto acadêmico.

O conteúdo não é material oficial da instituição ou da docente e não substitui as fontes originais.

## Corte documental e cronologia — v1.1 publicada

A **baseline histórica v1.0.1** encerra-se em **02/10/2026** (Semanas 01–04). A nova **v1.1** agrega como corte principal de atualização as aulas técnicas de **06, 08 e 09/10/2026** e a revisão de **10/10/2026** (Semanas 05–06). Os registros de **15 e 16/10/2026** sustentam a expansão editorial para Pandas e o novo eixo NumPy **por antecipação autorizada**; **17/10** representa revisão posterior, não retroprova do corte principal.

- **18/09:** a ausência de transcrição é intencional, por declaração do estudante.
- **02/10:** aula documentada na baseline anterior.
- **06/10:** funções, expressões regulares, inspeção e tratamento de dados.
- **08/10:** limpeza modular, reuso de funções, pipeline e relatório.
- **09/10:** relações entre tabelas, `merge`, métricas e interpretação.
- **10/10:** revisão de Python e lógica.
- **13/10:** **não houve aula**, conforme informação de Otávio; apresentação da Semana 06 não comprova a ocorrência de aula prevista.
- **15/10:** agrupamentos/indicadores e primeira abordagem de NumPy.
- **16/10:** arrays, operações vetorizadas, eixos, broadcasting e classificação ilustrativa com `np.where`.
- **17/10:** revisão de estruturas Python; material tratado como fonte posterior complementar.

A apresentação da Semana 07 aborda especialmente o **mini-projeto**; não é considerada correspondência exaustiva com a explicação oral de NumPy em 15 ou 16/10. Para a classificação tema a tema, consulte [`COBERTURA_PEDAGOGICA_V1.1.md`](COBERTURA_PEDAGOGICA_V1.1.md).

## Adendo 20/10/2026 — proveniência separada na v1.1.1

Os materiais de reforço da aula de **10/10/2026** incluem links para [Python Exercises — organização Machine-Learning-Visao-Computacional-T5](https://github.com/Machine-Learning-Visao-Computacional-T5/python_exercises). O notebook de reforço oferece doze exercícios orientados e a coleção de pseudocódigo reúne quinze exemplos. Essas referências foram compartilhadas no **aulão da SC TEC T8**, mas **a organização GitHub é de outra turma**. A licença publicada pelo repositório é MIT, sem que isso substitua verificação de direitos sobre recursos de terceiros nele citados.

O PDF de fluxograma foi **confirmado como arquivo existente**, mas **não houve leitura visual/integral autenticada**; a explicação autoral do método usa a transcrição de revisão e os textos efetivamente consultados.

O outro arquivo recebido era um ZIP com notebooks/CSV de **maio/2026** e quadro de vídeo identificado como **“Análise de Dados com Python T2 — M1S02 — Aulão”**. O esquema de seu `pedidos.csv` diverge do esquema da T8; o pacote permanece arquivado **separadamente como referência externa de outra turma** e **não** é prova de aula da T8 ou base canônica de exercícios.

A ampliação de **outliers, IQR, Min-Max e Z-score** baseia-se nos temas do **PPT oficial T8 M1S06**, que podem não ter sido inteiramente desenvolvidos nas sessões orais. Fórmulas, exemplos fictícios e interpretações aprofundadas são **[COMPLEMENTO DE APOIO]**. Consulte [o registro público de extensão v1.1.1](REFORCOS_AULAO_10_OUT_QUALIDADE_V1.1.1.md).

## Como as fontes são usadas

As fontes servem para:

1. confirmar conceitos e exemplos trabalhados;
2. recuperar explicações orais que não aparecem integralmente nos slides;
3. identificar dúvidas, correções e Dicas de Ouro surgidas em aula;
4. distinguir conteúdo já trabalhado de complemento pedagógico;
5. evitar apresentar como “conteúdo da aula” algo acrescentado apenas para apoiar a compreensão.

A ordem dos Guias não precisa reproduzir a cronologia das aulas: o conteúdo é reorganizado por dependência cognitiva.

## O que não é publicado automaticamente

Transcrições integrais, materiais proprietários, documentos institucionais, identificadores internos, controles operacionais e outros ativos de terceiros não entram automaticamente no repositório.

Quando uma fonte de terceiros é mencionada, isso não implica autorização para redistribuir sua íntegra.

## Complemento de apoio

A marca **(complemento de apoio)** identifica recurso útil para a aprendizagem que não foi localizado nas aulas/exercícios considerados no corte correspondente.

A marca é granular e pode ser retirada em revisão futura caso nova evidência comprove que o recurso já havia sido trabalhado.

## NumPy e material sintético

O quarto Guia e Caderno incluem arrays, `shape`, `size`, `ndim`, `dtype`, operações vetorizadas, máscaras, `axis`, broadcasting, `np.where` e uso de arrays com Pandas. Quando uma função útil excede o conteúdo comprovado no recorte (como `np.nanmean`, `np.arange`, `np.linspace` e `reshape`), é identificada como **[COMPLEMENTO DE APOIO]**.

Os exemplos de notas presentes nos materiais de estudo são *fictícios e didáticos*; as faixas de classificação do exemplo não são critérios oficiais de avaliação. Um nome coincidente com o do estudante em uma planilha de exercício **não comprova nota institucional**. Exercícios propostos nos Cadernos não representam atividade executada ou trabalho submetido.

A fonte fornecida pode indicar atividades ou links externos de exercício que não acompanharam a transferência de materiais. Nesses casos, o conteúdo ausente não é inventado nem promovido como leitura efetivamente concluída.

## Limite de evidência

Ausência de informação não autoriza completar conteúdo por inferência. Isso é especialmente importante em análise de dados: uma variável que não existe na base não pode sustentar uma explicação causal, e uma duração observada não prova atraso sem um prazo prometido para comparação.

## Reconciliação da v1.0.1

A revisão integral das fontes do corte identificou pontos que já haviam sido trabalhados e mereciam classificação mais precisa no material:

- expressão condicional/ternário;
- `DataFrame.apply(..., axis=1)`;
- `.plot(kind="bar")` e uso associado de Matplotlib.

Esses pontos foram incorporados/reclassificados sem usar conteúdos de aulas posteriores ao corte público.

As diferenças entre Colab e VS Code continuam tratadas como **diferenças operacionais de ambiente**, não como currículos diferentes.

## Complemento — avaliação comentada M1S03

A M1S03 possui versões [Colab](../avaliacoes/colab/m1s03_avaliacao_comentada.ipynb) e [VS Code](../avaliacoes/vscode/m1s03_avaliacao_comentada.ipynb), com dez questões e alternativas fornecidas pelo estudante, explicações autorais, laboratórios e gabarito. Resultado de 10/10 informado por Otávio, não publicado como nota nem comprovado de forma independente. A reprodução de enunciados institucionais não constitui autorização de redistribuição por terceiro; não há permissão específica documentada nesta trilha. A inclusão é complementar à baseline v1.0.1, sem alterar seu corte.

## Complemento — avaliações comentadas M1S02

Os notebooks [Colab](../avaliacoes/colab/m1s02_avaliacao_comentada.ipynb) e [VS Code](../avaliacoes/vscode/m1s02_avaliacao_comentada.ipynb) apresentam dez questões contextualizadas da Lista de Exercícios M1S02 (Módulo 01, Semana 02), complementadas por comentários e laboratórios autorais. A organização editorial usa o nome **Avaliações**, sem atribuir à atividade natureza de prova formal. Não são publicadas notas individuais, feedback privado da plataforma ou controles operacionais. Os enunciados são reproduzidos em contexto pedagógico; quaisquer direitos de terceiros continuam preservados.

Este complemento é posterior ao corte declarado da baseline v1.0.1 e **não altera retroativamente a cobertura de fontes até 02/10/2026**. A inclusão fica segregada na nova categoria.
