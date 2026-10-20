# Reforço pedagógico v1.1.1 — planejamento e tratamento de valores extremos

> **Material didático autoral da SC TEC T8 — 20/10/2026.** Não é transcrição, material oficial de professor, solução de mini-projeto ou certificado. Este documento descreve um suplemento à v1.1 sem criar novos Guias ou checkpoints institucionais.

## Síntese da alteração

| Onde | O que mudou | Proveniência | Estado |
|---|---|---|---|
| Caderno 02, Python Desenvolvimento (Colab e VS Code) | Quadros de planejamento nos checkpoints 1, 3, 4, 5 e 6; laboratório DP1–DP3 para condições, acumuladores e funções | Revisão de lógica T8 em 10/10 e referências externas compartilhadas | Exercícios **autorais e sintéticos** |
| Guia 03, Pandas (Colab e VS Code) | Seções 4.5–4.7 sobre outliers/IQR, Z-score, Min-Max, exemplos e gate de domínio | PPT T8 da Semana 06 + **complemento explicativo autoral** | Acréscimo ao CP4 |
| Caderno 03, Pandas (Colab e VS Code) | Exercícios opcionais P17–P20 de detecção, padronização e interpretação | Mesmo PPT + material sintético | Extensão do CP4 |
| Biblioteca Viva (Colab e VS Code) | Verbetes de metodologia de resolução e indicadores de qualidade | Síntese das fontes acima | Consulta transversal |

**Não mudou:** número de Guias (4), Cadernos (4), Bibliotecas (1 por ambiente), estrutura de nove pares de notebooks, dados oficiais T8, avaliações comentadas, requisitos institucionais e cronologia de aulas.

## Referências auditadas

**1. Aulão de Revisão — Lógica com Python — 10/10/2026, SC TEC T8.** A transcrição do encontro confirma a utilização de GitHub, guia de fluxograma e prática de decomposição de exercícios. O documento de links recebido apontou para um repositório externo de outra turma:

- [Repositório Python Exercises, organização Machine-Learning-Visao-Computacional-T5](https://github.com/Machine-Learning-Visao-Computacional-T5/python_exercises)
- [Notebook de reforço de 10/10/2026](https://github.com/Machine-Learning-Visao-Computacional-T5/python_exercises/tree/main/exercicios_resolvidos/aulas_reforco/aula_10_out_2026) — 12 exercícios de `if/elif/else`, `for/range`, `while` e combinações
- [Coleção de pseudocódigos](https://github.com/Machine-Learning-Visao-Computacional-T5/python_exercises/blob/main/exercicios_resolvidos/pseudocodigo/pseudocodigo.md) — 15 exemplos
- [Guia geral](https://github.com/Machine-Learning-Visao-Computacional-T5/python_exercises/blob/main/guia_geral.md) — planejamento, ambiente e diagnóstico
- [PDF sobre fluxograma](https://github.com/Machine-Learning-Visao-Computacional-T5/python_exercises/blob/main/documentos/como_resolver_exercicios/guia_alunos_fluxograma_python_pandas.pdf) — **existência verificada**, mas conteúdo visual/integral não autenticado na análise; a melhoria autoral não pressupõe leitura integral dele.

**2. PPT institucional da SC TEC T8, Semana 06 (M1S06).** Trata de diagnóstico, valores ausentes, duplicatas e valores extremos (IQR), normalização Min-Max/Z-score e escolhas justificadas de limpeza. **A presença de um conceito no PPT não comprova sua explicação oral completa nas aulas de 08 ou 09/10.** As demonstrações acrescidas nos Guias são classificadas como **[COMPLEMENTO DE APOIO]**.

**3. Pacote ZIP externo de maio/2026.** A inspeção de amostras visuais de um vídeo apontou a inscrição “Análise de Dados com Python T2 — M1S02 — Aulão”; as tabelas internas, especialmente um arquivo `pedidos.csv`, têm esquema diferente da base oficial T8. O pacote permanece **referência segregada de outra turma**, não fonte institucional da Semana 06 T8. O vídeo **não foi assistido/transcrito integralmente**; não se publicaram suas mídias, bases ou notebooks.

## Fundamentos metodológicos incorporados

### Planejamento antes de resolver
1. **Compreender:** o que a questão pede que seja exibido ou retornado?
2. **Inventariar:** quais dados, formatos e condições são conhecidos?
3. **Prever:** qual deve ser o resultado de um caso simples, calculado à mão?
4. **Planejar:** escreva os passos em português/pseudocódigo.
5. **Executar:** crie uma tentativa original, com observação de saídas.
6. **Diagnosticar:** compare a saída real com a previsão; teste valores abaixo, no limite e acima dele, além de caso vazio quando fizer sentido.
7. **Recuperar:** explique a regra e resolva uma variação sem consultar o gabarito.

### Detectar outliers não autoriza descartá-los
- **IQR:** `Q1`, `Q3` e `Q3−Q1`; limites de triagem `Q1−1,5×IQR` e `Q3+1,5×IQR` são **heurística**, não prova de erro.
- **Z-score:** `(valor−média)/desvio`; explicitar `ddof` e verificar desvio zero. Critérios como `|z|>3` não são universais nem necessariamente coincidem com IQR.
- **Min-Max:** `(x−mínimo)/(máximo−mínimo)`; modifica a escala, não corrige a observação; se a amplitude é zero, não dividir por zero.
- **Integridade:** preservar originais, tipo, unidade e cardinalidade; sinalizar o candidato, analisar sua origem e documentar a decisão antes de corrigir/excluir.

## Como usar

No **Guia 03**, leia as seções **4.5–4.7** após valores ausentes, duplicatas e `fillna`. No **Caderno 03**, tente os exercícios **P17–P20** dentro do CP4; consulte as soluções apenas depois de registrar hipóteses. No **Caderno 02**, use o quadro de planejamento de cada checkpoint antes de executar seus exercícios; faça o laboratório **DP1–DP3** para recuperação integrada. A **Biblioteca Viva** oferece definições resumidas.

**Lacunas explícitas:** não houve execução integral de todos os notebooks em Colab e VS Code nem validação de critérios avaliativos pela instituição. **GitHub publica material de estudo; não comprova presença, nota, certificado ou realização do mini-projeto.**

[Voltar ao README](../README.md) · [Fontes e escopo](FONTES_E_ESCOPO.md) · [Método pedagógico](METODO_PEDAGOGICO.md) · [Changelog](../CHANGELOG.md)
