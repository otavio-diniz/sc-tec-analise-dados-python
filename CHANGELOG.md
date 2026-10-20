# Changelog

## 1.1.0 — 2026-10-19 — Guias Vivos até Semana 06 + eixo NumPy

**Publicação autorizada por Otávio.** Quatro Guias Vivos, quatro Cadernos Práticos e uma Biblioteca Viva, cada um em Google Colab e VS Code: **18 notebooks**. A versão anterior v1.0.1 foi preservada no histórico privado antes da ampliação; os caminhos públicos anteriores foram mantidos.

### Novo recorte de estudos e fontes
- **Semana 05:** aula técnica de 06/10 — diagnóstico, qualidade dos dados, filtros, regex, funções e transformações;
- **Semana 06:** aulas técnicas 08 e 09/10 — modularização, pipelines, relatórios, junções de tabelas e indicadores; aulão de revisão de 10/10;
- **Continuidade documentada de 15 e 16/10:** aprofundamento de Pandas e NumPy, incluído por decisão editorial expressa como **antecipação da Semana 07**; aulão de 17/10 é reforço posterior, não fonte retrospectiva do corte principal;
- O dia **13/10** não corresponde a aula realizada, conforme informação do estudante. Slides planejados não certificam realização.

### Python — Fundamentos / Desenvolvimento
- Guia/Caderno 01: revisão de tipos, `None`, conversão, leitura de erros e recuperação ativa;
- Guia/Caderno 02: **Checkpoint 6 — Modularização e pipelines**, com módulos `.py`, funções reutilizáveis, contratos de entrada/saída, validação de formato, JSON e diagnóstico.

### Pandas — Análise de Dados
- Guia/Caderno 03: novos **Checkpoints 8 e 9** para `merge`, chaves e cardinalidade, filtros, faturamento, custo e margem, `groupby`/`agg`, `pivot_table`, metas e inferência responsável;
- distinção entre conceitos apresentados no PPT e conteúdos aprofundados oralmente em 15/10;
- exercícios didáticos sintéticos com soluções comentadas, sem replicar dados institucionais.

### Novo quarto eixo — NumPy
- **Guia Vivo 04** (Colab e VS Code): cinco checkpoints (arrays/tipos, vetorização/máscaras, matrizes/eixos, broadcasting, Pandas + `np.where`);
- **Caderno Prático 04** (Colab e VS Code): vinte exercícios sintéticos N1–N20, com etapas de tentativa, diagnóstico e solução comentada;
- complementos além das aulas identificados como **[COMPLEMENTO DE APOIO]**, evitando apresentá-los como conteúdo já ministrado.

### Biblioteca, método e manutenção
- Biblioteca Viva ampliada com verbetes de modularização, pipelines, `merge`, indicadores, NumPy e interpretação;
- atualização de README, método pedagógico, cobertura de fontes, changelog e orientações de contribuição;
- caminhos públicos existentes de M1S02/M1S03 mantidos, sem substituir as avaliações comentadas;
- nomenclatura legada `04_biblioteca_viva_python_pandas.ipynb` preservada para compatibilidade, agora com verbetes NumPy.

### Verificação e limite
- arquivos em formato Jupyter Notebook 4,5 conferidos estruturalmente; células novas com IDs únicos, blocos novos Colab–VS Code conciliados;
- **não há evidência registrada de execução integral das células em Colab/VS Code**; dependências e exemplos podem exigir ambiente e arquivos apropriados;
- a publicação **não** significa entrega de mini-projeto, aprovação, nota ou conclusão institucional.

---
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
