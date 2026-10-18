# Changelog

## Complemento — 2026-10-18 — Avaliação comentada M1S03

- Publicadas versões Colab e VS Code do notebook de avaliação comentada M1S03, com dez questões, laboratórios e gabarito.
- Atualizados README, CONTRIBUTING, método pedagógico e fontes para incluir caminhos públicos M1S03 e preservar os caminhos M1S02.
- Sem alteração retroativa da baseline v1.0.1.


## Complemento — 2026-10-18 — Avaliação comentada M1S02

- Reconciliação documental: árvore `avaliacoes/` conferida com a branch `main`; README passou a distinguir baseline v1.0.1 do complemento M1S02, com navegação direta nas duas plataformas.
- Instruções de contribuição e links cruzados de método pedagógico/fontes atualizados para contemplar o novo tipo de material.

- Nova categoria `avaliacoes/`, separada de `exercicios/`.
- Publicadas versões Google Colab e VS Code do notebook M1S02, sem nomenclatura de revisão nos nomes públicos.
- Dez questões, cinco alternativas por item, análise conceitual, Dicas de Ouro, laboratório executável, desafio de aplicação, resolução comentada, recuperação ativa e gabarito final.
- Instruções operacionais diferenciadas entre Colab e VS Code; conteúdo conceitual equivalente.
- Complemento documental segregado; baseline v1.0.1 e seu corte em 02/10/2026 preservados.

## 1.0.1 — 2026-10-06

Revisão integral e enriquecimento da baseline 1.0.0, mantendo o mesmo corte acadêmico até 02/10/2026.

### Aprendizagem em espiral
- adicionados blocos **🔁 Você já viu isso**;
- incorporadas revisões acumulativas nos Cadernos;
- checkpoints reforçados com critérios **COMPREENDER / EXECUTAR / DIAGNOSTICAR**;
- mantida a progressão por dependência cognitiva.

### Biblioteca Viva
- criada Biblioteca Viva para Google Colab;
- criada Biblioteca Viva para VS Code;
- corpo conceitual equivalente entre ambientes;
- diferenças operacionais separadas: sessão/upload no Colab e kernel/caminhos locais/persistência no VS Code.

### Reconciliação de cobertura
- expressão condicional/ternário reconhecida como conteúdo trabalhado;
- `DataFrame.apply(..., axis=1)` reconhecido como conteúdo trabalhado;
- `.plot(kind="bar")` / Matplotlib reconhecidos como conteúdo trabalhado no corte;
- classificação de complementos revisada sem antecipar conteúdo posterior ao corte.

### Versionamento
- v1.0.1 é um **patch pedagógico** da v1.0.0;
- não houve ampliação da fronteira acadêmica;
- documentação pública atualizada para explicitar biblioteca, recuperação e evolução por versões estáveis.

## 1.0.0 — 2026-10-05

Baseline pedagógica consolidada para publicação.

### Validação
- Guia Python — Fundamentos Absolutos: validado.
- Guia Python — Desenvolvimento: validado.
- Guia Pandas — Análise de Dados: validado.
- Cadernos Práticos dos três eixos: validados.
- equivalência conceitual Colab ↔ VS Code conciliada.

### Corte acadêmico
- fontes tratadas até 02/10/2026;
- aula de 02/10 incorporada em Desenvolvimento e Pandas;
- 18/09 permanece sem transcrição por decisão expressa do estudante.

### Python
- reforçados `/`, `//`, `%`, `**`, paridade e quebra de linha;
- reforçados interpretação de enunciado, indentação e leitura de erros;
- incorporadas estruturas compostas/aninhadas, `for` sobre registros, `for + if`, contador e acumulador.

### Pandas
- reorganização em 3 partes e 7 checkpoints;
- explicações ampliadas para `int64`, `float64`, `object/string`, `datetime64[ns]` e `NaT`;
- comparações de Series × DataFrame, atributo × método e operações encadeadas;
- CSV, JSON e Excel;
- `copy()`, datas, `errors="coerce"`, acessor `.dt` e durações;
- reforço de interpretação analítica e limites de inferência;
- correção do Caderno Pandas para exibir explicitamente a base sintética com `display(df)` em Colab e VS Code.

### Transparência pedagógica
- convenção **(complemento de apoio)** mantida;
- complementos permanecem opcionais e não são requisitos de checkpoint.

### Documentação
- README reorganizado como jornada pública;
- documentação de fontes, escopo e método atualizada;
- contribuição e feedback documentados.
