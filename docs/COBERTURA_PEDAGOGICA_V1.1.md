# Cobertura pedagógica — v1.1 — SC TEC T8

> Documento editorial público de rastreabilidade de conceitos. **Não é transcrição, apresentação oficial, certificado nem relatório de desempenho.** Os registros integrais e os arquivos da professora permanecem em seus locais de origem, fora deste repositório.

## Marco de versão

- **Baseline anterior v1.0.1:** Semanas 01–04, aulas e materiais tratados até 02/10/2026.
- **Corte principal v1.1:** Semanas 05–06, aulas técnicas de **06/10, 08/10, 09/10** e aula de **revisão de 10/10/2026**.
- **Extensão antecipada:** aulas de **15 e 16/10/2026**, utilizadas para estruturar o quarto eixo de NumPy e completar conceitos de Pandas com evidência de aula posterior. Autorizada pelo estudante como antecipação da próxima janela.
- **Revisão posterior:** 17/10/2026, usada como reforço de estruturas de Python; não é apresentada como aula técnica de NumPy.
- **13/10:** não houve aula, segundo informação do estudante.

As apresentações dos módulos/semana podem **conter planejamento, exemplos ou temas que não foram integralmente desenvolvidos em sessão oral**. O PPT da Semana 07 diz respeito sobretudo ao mini-projeto: não se assume equivalência literal com as explicações NumPy de 15/16.

## Adendo de cobertura v1.1.1 — 20/10/2026

| Evidência verificada | Abrangência material | Complemento de estudo, sem promoção institucional |
|---|---|---|
| Revisão T8 de 10/10; links externos de reforço T5 | Dificuldade de interpretar enunciados, planejar passos, resolver `if/for/while`, comparar saídas | **Caderno Desenvolvimento 02:** quadros de planejamento nos CP1/3/4/5/6 e exercícios sintéticos DP1–DP3 |
| PPT institucional T8 M1S06 | Cita valores ausentes, duplicatas, IQR, Min-Max e Z-score | **Guia Pandas 03 CP4:** seções 4.5–4.7; **Caderno Pandas 03:** P17–P20, todos como complemento de apoio |
| ZIP de maio com vídeo identificado como T2/M1S02 | Interseção temática em qualidade dos dados, mas turma, data e base `pedidos.csv` divergem | **Não importado** como fonte T8; apenas referência segregada; nenhum código ou CSV substituído |
| Biblioteca Viva | Vocabulário transversal consolidado | IQR, Z-score, Min-Max e modelo de planejamento |

**Classificação:** CORRESPONDENTE à revisão no aspecto metodológico; COMPLEMENTO DE APOIO ao PPT M1S06 para fórmulas e demonstrações; DIVERGÊNCIA MATERIAL de turma para o ZIP T2; PDF externo existente, porém **não integralmente analisado**. A patch v1.1.1 mantém quatro Guias/quatro Cadernos/uma Biblioteca Viva por ambiente, sem novo módulo e sem progressão institucional inferida.

[Registro aprofundado](REFORCOS_AULAO_10_OUT_QUALIDADE_V1.1.1.md).

## Matriz — evidência observada e destino no material

| Data / natureza | Conceitos referenciados | Destino publicado | Classificação |
|---|---|---|---|
| 06/10 — aula técnica | limpeza de dados, campos ausentes, funções, regex, `apply`, `lambda`, decisões de padronização | Desenvolvimento CP4–6, Pandas CP4–5 e Cadernos | Conteúdo trabalhado / reforço |
| 08/10 — aula técnica | modularização de funções, arquivo `.py`, pipeline, relatório, JSON e critérios de validação | Desenvolvimento **CP6** | Conteúdo trabalhado |
| 09/10 — aula técnica | associação de tabelas, `merge`, valores/custos/margens, controle de linhas e indicadores | Pandas **CP8–9** | Conteúdo trabalhado |
| 10/10 — revisão | `if`, laços, condições de fronteira, leitura de erros e depuração | Fundamentos e Desenvolvimento: revisões | Reforço transversal |
| 15/10 — continuidade | `groupby`, `agg`, `pivot_table`, metas e introdução NumPy | Pandas CP9 e NumPy CP1 | **Aula posterior explicitamente identificada** |
| 16/10 — continuidade | vetorização, `shape`, `dtype`, `axis`, broadcasting e `np.where` | NumPy **CP1–5** | **Aula posterior explicitamente identificada** |
| 17/10 — revisão | coleções, dicionários, JSON, funções, escopo e retorno | Retomada de Python / Biblioteca | Complemento posterior |
| Slides Semanas 05–06 | temas de Pandas, NumPy, transformação e visualização | contextualização seletiva | Material de apresentação, **não prova automática de aula** |
| Slides Semana 07 | mini-projeto e orientações | consulta metodológica | **Não comparável** a transcrições de 15/16 como par exato |

## Destino no currículo público

**Guia/Caderno 01 — Fundamentos:** tipos, `None`, conversões seguras, leitura de mensagens de erro e recuperação ativa. Sem novos checkpoints estruturais.

**Guia/Caderno 02 — Desenvolvimento:** reforço de condições, laços, funções e expressões regulares, com **novo Checkpoint 6 — Modularização e Pipelines**.

**Guia/Caderno 03 — Pandas:** reforço de qualidade e transformações e **novos Checkpoints 8 (Integração) e 9 (Indicadores)**. `groupby`/`pivot_table` foram apresentados em material de apoio, e a explicação detalhada de 15/10 está identificada como continuidade posterior.

**Guia/Caderno 04 — NumPy:** cinco checkpoints de arrays, vetorização, matrizes/eixos, broadcasting e NumPy–Pandas. Os exercícios N1–N20 são **sintéticos e autorais**, não material de prova formal.

**Biblioteca Viva:** vocabulário de consulta sobre funções, pipeline, Pandas, NumPy e erros comuns, sem duplicar o currículo.

## Informações adicionais e cautelas

- **[COMPLEMENTO DE APOIO]:** exemplo ou recurso acrescentado para fechar a compreensão, sem alegar que foi ministrado na data correspondente; exemplos: `re.fullmatch`, `merge(validate=...)`, `np.nanmean`, `np.arange`, `np.linspace`, `reshape`.
- Um CPF com 11 dígitos **não equivale** a CPF verificado, e regex não atesta propriedade de e-mail.
- Faturamento menos custo de itens não é automaticamente **lucro líquido**.
- Um `merge` pode perder ou multiplicar registros; é preciso avaliar chaves e cardinalidade.
- Em arrays, `axis` e broadcasting exigem interpretação do formato **e** do significado de cada posição.
- Classificações fictícias `Aprovado`, `Revisão`, `Reprovado` usadas no treino NumPy não correspondem a notas reais ou critérios oficiais da SC TEC.
- Links/arquivos de exercícios mencionados oralmente e não fornecidos não são tratados como fontes completas.
- Este material **não resolve nem submete mini-projeto institucional**. A consulta aos Guias pode apoiar entendimento de ferramentas e métodos.

## Metodologia, disponibilidade e privacidade

A trilha foi reorganizada para **dependência cognitiva** e aprendizagem em espiral, conforme [Método pedagógico](METODO_PEDAGOGICO.md). Os notebooks têm pares Colab/VS Code com conteúdo didático equivalente; o comportamento de todos os exemplos nos ambientes concretos **não foi auditado por execução integral** durante esta publicação.

Os arquivos-fonte, transcrições integrais, slides, planilhas pessoais, File IDs internos e controles institucionais **não fazem parte desta distribuição pública**. Consultar um conteúdo ou publicar um notebook não comprova aula assistida, exercício executado, trabalho aprovado ou certificação.

[Voltar ao README](../README.md) · [Fontes e escopo](FONTES_E_ESCOPO.md) · [Changelog](../CHANGELOG.md).
