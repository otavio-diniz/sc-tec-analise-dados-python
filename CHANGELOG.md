# Changelog

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
