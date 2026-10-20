# SC TEC — Análise de Dados com Python | Guias Vivos, Cadernos Práticos, NumPy e Biblioteca Viva

Material de estudo progressivo para quem está começando em Python e análise de dados e quer **entender a lógica**, não apenas copiar código.

O repositório organiza conceitos, exemplos, exercícios autorais e avaliações comentadas em uma sequência pedagógica própria:

**Python — Fundamentos Absolutos → Python — Desenvolvimento → Pandas — Análise de Dados → NumPy — Arrays e Cálculo Numérico**

> **Produção autoral de Otávio Diniz.** O material foi construído a partir do estudo das aulas, exemplos, orientações e materiais apresentados no contexto do curso, com reorganização, síntese, exemplos e explicações próprias. **Não é material oficial da instituição nem da docente.**

## O problema que este material procura resolver

Em aulas práticas, parte importante da aprendizagem surge em explicações orais, dúvidas, correções ao vivo e comparações que nem sempre aparecem no slide ou no código final.

Alguns exemplos incorporados ao material são:

- `/` × `//` × `%`;
- por que “a partir de 200” normalmente pede `>= 200`;
- contador × acumulador;
- como a indentação altera o fluxo;
- por que um código pode executar e ainda não responder corretamente ao enunciado;
- como ler tipos como `float64` e `datetime64[ns]`;
- por que, em análise de dados, **inspecionar e interpretar vêm antes de limpar**.

Os Guias Vivos transformam essas explicações em uma trilha organizada para estudo e consulta.

## O que você encontra aqui

### 1. Guia Vivo 01 — Python: Fundamentos Absolutos
Leitura de código, valores e tipos, variáveis, conversão, entradas, operadores, `None`, erros, strings, f-strings e fundamentos de raciocínio. Na v1.1, o material ganhou retomadas sobre diagnóstico de exceções, `None`, string vazia e conversões seguras. **São reforços dos checkpoints já existentes**, não um curso novo.

### 2. Guia Vivo 02 — Python: Desenvolvimento
Condições, comparações, listas/tuplas/dicionários, laços, contadores, funções, `return`, strings, expressões regulares, `lambda` e aplicações. A v1.1 acrescenta o **Checkpoint 6 — Modularização e Pipelines**: contrato de função, módulo `.py`, `import`, tratamento de registros, validação de formato, relatório e JSON.

### 3. Guia Vivo 03 — Pandas: Análise de Dados
Continua do `DataFrame`, inspeção, filtros, ausências, duplicações, transformação, CSV/JSON/Excel, datas e interpretação. O percurso cresce de **sete para nove checkpoints**, incluindo:
- **CP8 — Integração de tabelas:** `merge`, chaves, `left` × `inner`, cardinalidade, correspondências ausentes e controle de multiplicação de linhas;
- **CP9 — Indicadores e interpretação:** filtros comerciais, faturamento/custos/margem, `groupby`, `agg`, `pivot_table`, metas e limites da inferência.

**Atenção à proveniência:** `groupby`/`pivot_table` aparecem no material de slides M1S05, mas a explicação aprofundada registrada ocorreu em **15/10/2026**, depois do corte principal da v1.1. Essa diferença é identificada nos materiais.

### 4. Guia Vivo 04 — NumPy: Arrays e Cálculo Numérico ✨
O quarto eixo foi incluído mediante autorização pedagógica para **antecipar o estudo**, tomando por base as aulas de **15 e 16/10/2026** e exemplos autorais independentes. Seus cinco checkpoints são:
1. listas × `ndarray`, forma, dimensão, tamanho e `dtype`;
2. vetorização, máscaras e medidas;
3. matrizes, indexação, fatias, `axis=0` × `axis=1`;
4. broadcasting, compatibilidade de formatos e alinhamento por posição;
5. NumPy com Pandas, `np.where`, classificação ilustrativa e interpretação.

Aulas posteriores ainda **não realizadas ou não documentadas** não são tratadas como ministradas. Recursos como `nanmean`, `arange`, `linspace` e `reshape` recebem a marca **[COMPLEMENTO DE APOIO]** quando não há evidência de aula no recorte.

### 5. Cadernos Práticos — exercícios autorais
Cada um dos quatro Guias tem um **Caderno correspondente**, com exercício, espaço de tentativa, execução, solução comentada e recuperação ativa. O Caderno NumPy contém **20 exercícios sintéticos**. Todos os materiais têm versões equivalentes para **Google Colab e VS Code**. A prática é preparatória e não reproduz nem resolve a avaliação formal do curso.

### 6. Biblioteca Viva
Consulta rápida de Python, Pandas e NumPy: **o que é → como ler → quando aparece → erro comum → conexão**. Existem duas versões, uma por ambiente. Por compatibilidade com links antigos, o arquivo público ainda se chama `04_biblioteca_viva_python_pandas.ipynb`, embora o conteúdo atual também abranja NumPy.

### Avaliações comentadas — M1S02 e M1S03
A pasta [`avaliacoes/`](avaliacoes/) reúne comentários de estudo sobre questões de M1S02 e M1S03. São distintas dos exercícios autorais e permanecem preservadas nesta publicação:
- [M1S02 — Colab](avaliacoes/colab/m1s02_avaliacao_comentada.ipynb) · [VS Code](avaliacoes/vscode/m1s02_avaliacao_comentada.ipynb)
- [M1S03 — Colab](avaliacoes/colab/m1s03_avaliacao_comentada.ipynb) · [VS Code](avaliacoes/vscode/m1s03_avaliacao_comentada.ipynb)

O uso editorial de “avaliação comentada” **não** certifica presença, nota, aprovação ou entrega de avaliação institucional.

## Estado da publicação — v1.1 (19/10/2026)

**v1.1 publicada no GitHub mediante autorização de Otávio.** São **quatro Guias, quatro Cadernos e uma Biblioteca Viva**, em Colab e VS Code: **18 notebooks** de estudo. A baseline histórica **v1.0.1**, com corte até 02/10, foi preservada no acervo interno antes da ampliação.

- **Corte principal de atualização:** aulas de 06, 08 e 09/10 e revisão de 10/10/2026, Semanas 05 e 06.
- **Extensão por antecipação autorizada:** conteúdos de 15 e 16/10 para Pandas e o novo Guia NumPy; revisão de 17/10 é fonte de reforço posterior.
- **13/10:** não houve aula, conforme informação do estudante. Referência a esse dia em material de planejamento não é prova de aula ministrada.
- **Status técnico:** os notebooks foram submetidos a verificação estática de estrutura Jupyter e correspondência dos novos blocos Colab ↔ VS Code. Isso **não equivale a execução independente de todas as células** nem a validação dos ambientes individuais.
- **Materiais anteriores:** M1S02 e M1S03 continuam acessíveis nas mesmas URLs, sem alteração.
- **Evidência de aprendizagem:** arquivos de estudo não demonstram frequência, exercício executado, nota, certificado ou conclusão institucional.

O material **não é publicação oficial da SC TEC nem da professora**. Exercícios e dados demonstrativos novos são identificados como didáticos e sintéticos.

## Acesso direto aos Guias e Cadernos

| Eixo | Guia — Colab | Guia — VS Code | Caderno — Colab | Caderno — VS Code |
|---|---|---|---|---|
| 01 · Fundamentos | [Abrir](notebooks/colab/01_python_fundamentos.ipynb) | [Abrir](notebooks/vscode/01_python_fundamentos.ipynb) | [Exercícios](exercicios/colab/01_python_fundamentos_exercicios.ipynb) | [Exercícios](exercicios/vscode/01_python_fundamentos_exercicios.ipynb) |
| 02 · Desenvolvimento | [Abrir](notebooks/colab/02_python_desenvolvimento.ipynb) | [Abrir](notebooks/vscode/02_python_desenvolvimento.ipynb) | [Exercícios](exercicios/colab/02_python_desenvolvimento_exercicios.ipynb) | [Exercícios](exercicios/vscode/02_python_desenvolvimento_exercicios.ipynb) |
| 03 · Pandas | [Abrir](notebooks/colab/03_pandas_analise_dados.ipynb) | [Abrir](notebooks/vscode/03_pandas_analise_dados.ipynb) | [Exercícios](exercicios/colab/03_pandas_exercicios.ipynb) | [Exercícios](exercicios/vscode/03_pandas_exercicios.ipynb) |
| 04 · NumPy | [Abrir](notebooks/colab/04_numpy_arrays_calculo.ipynb) | [Abrir](notebooks/vscode/04_numpy_arrays_calculo.ipynb) | [Exercícios](exercicios/colab/04_numpy_arrays_exercicios.ipynb) | [Exercícios](exercicios/vscode/04_numpy_arrays_exercicios.ipynb) |

**Biblioteca Viva:** [Colab](biblioteca/colab/04_biblioteca_viva_python_pandas.ipynb) · [VS Code](biblioteca/vscode/04_biblioteca_viva_python_pandas.ipynb). **Avaliações comentadas:** [M1S02](avaliacoes/colab/m1s02_avaliacao_comentada.ipynb) · [M1S03](avaliacoes/colab/m1s03_avaliacao_comentada.ipynb).

## Quickstart

### Clonar o repositório

```bash
git clone https://github.com/otavio-diniz/sc-tec-analise-dados-python.git
cd sc-tec-analise-dados-python
```

### Google Colab

**Avaliações Colab:** [M1S02](avaliacoes/colab/m1s02_avaliacao_comentada.ipynb) · [M1S03](avaliacoes/colab/m1s03_avaliacao_comentada.ipynb).

1. Abra um notebook de `notebooks/colab/`.
2. Leia um checkpoint e execute os exemplos na ordem.
3. Abra o Caderno correspondente em `exercicios/colab/`.
4. Faça sua tentativa **antes** de consultar a solução comentada.
5. Volte ao Guia sempre que o exercício revelar uma dúvida conceitual.
6. Quando um termo técnico travar a leitura, consulte `biblioteca/colab/`.
7. Para as dez questões contextualizadas do M1S02, consulte `avaliacoes/colab/` e escolha a alternativa antes de abrir a resolução.

Arquivos enviados ao runtime do Colab podem desaparecer quando a sessão reinicia.

### VS Code

**Avaliações VS Code:** [M1S02](avaliacoes/vscode/m1s02_avaliacao_comentada.ipynb) · [M1S03](avaliacoes/vscode/m1s03_avaliacao_comentada.ipynb).

1. Abra um `.ipynb` de `notebooks/vscode/`.
2. Selecione um kernel/interpretador Python já disponível no ambiente.
3. Execute as células pelo controle do notebook ou com `Shift + Enter`.
4. Use o Caderno equivalente em `exercicios/vscode/` para praticar.
5. Para consulta rápida de conceitos e diferenças operacionais, use `biblioteca/vscode/`.
6. Para estudar as questões do M1S02, consulte `avaliacoes/vscode/`.

**Extensão Python/Jupyter e interpretador Python não são a mesma coisa.** Este repositório não instala nem configura Python, VS Code, extensões ou ambiente local.

## Como estudar

1. Leia um checkpoint do Guia.
2. Execute os exemplos.
3. Tente explicar o código com suas próprias palavras.
4. Faça os exercícios correlacionados.
5. Consulte a solução somente depois da tentativa.
6. Refaça o exercício alterando valores ou regras.
7. No Pandas, explique também **o que o resultado significa**, não apenas como obtê-lo.

O objetivo não é decorar código. É desenvolver leitura, raciocínio, interpretação e capacidade de reconstruir soluções com apoio de documentação, exemplos e IA de forma crítica.

## Método pedagógico

Os notebooks não reproduzem obrigatoriamente a cronologia das aulas. O conteúdo é reorganizado por **dependência cognitiva**: primeiro o que o iniciante precisa compreender para que o próximo conceito faça sentido.

A evolução até a v1.1 adota uma progressão em **espiral**: primeiro contato → prática → retorno → recuperação → aprofundamento. Blocos **🔁 Você já viu isso** e revisões acumulativas ajudam a recuperar conceitos anteriores antes de avançar.

Nos eixos Pandas e NumPy, cada conceito procura seguir:

**o que é → como ler a sintaxe → exemplo → comparação → resultado → interpretação → validação**

Mais detalhes em [`docs/METODO_PEDAGOGICO.md`](docs/METODO_PEDAGOGICO.md).

## Complemento de apoio

Alguns recursos são úteis para compreensão, comparação ou continuidade didática, mas não foram identificados nas aulas/exercícios dentro do corte documental correspondente. Nesses casos, aparecem como **(complemento de apoio)**.

A marca:

- não significa que o recurso seja incorreto;
- evita confundi-lo com conteúdo já trabalhado;
- é aplicada de forma granular;
- não transforma o recurso em requisito obrigatório do checkpoint.

## Estrutura do repositório

A árvore abaixo apresenta o conteúdo da v1.1 publicada e preserva a categoria de avaliações comentadas:

```text
sc-tec-analise-dados-python/
├── README.md
├── CHANGELOG.md
├── CONTRIBUTING.md
├── notebooks/
│   ├── colab/
│   │   ├── 01_python_fundamentos.ipynb
│   │   ├── 02_python_desenvolvimento.ipynb
│   │   ├── 03_pandas_analise_dados.ipynb
│   │   └── 04_numpy_arrays_calculo.ipynb
│   └── vscode/                (mesmos quatro Guias)
├── exercicios/
│   ├── colab/
│   │   ├── 01_python_fundamentos_exercicios.ipynb
│   │   ├── 02_python_desenvolvimento_exercicios.ipynb
│   │   ├── 03_pandas_exercicios.ipynb
│   │   └── 04_numpy_arrays_exercicios.ipynb
│   └── vscode/                (mesmos quatro Cadernos)
├── biblioteca/
│   ├── colab/04_biblioteca_viva_python_pandas.ipynb
│   └── vscode/04_biblioteca_viva_python_pandas.ipynb
├── avaliacoes/
│   ├── colab/m1s02_avaliacao_comentada.ipynb
│   ├── colab/m1s03_avaliacao_comentada.ipynb
│   └── vscode/                (M1S02 e M1S03 preservadas)
└── docs/
    ├── FONTES_E_ESCOPO.md
    ├── METODO_PEDAGOGICO.md
    └── COBERTURA_PEDAGOGICA_V1.1.md
```

## Validação e limites

A revisão dos materiais confronta aulas, transcrições e notebooks de referência com os Guias e Cadernos, incluindo explicações orais, dúvidas, correções e exemplos improvisados quando têm valor didático.

As versões Colab e VS Code preservam o **mesmo conteúdo conceitual**; diferenças são restritas ao ambiente, execução e caminhos.

A validação técnica não substitui documentação oficial das bibliotecas e ferramentas. Algumas células que dependem de arquivos externos exigem que o arquivo esteja disponível no ambiente de execução.

## Fontes, autoria e direitos de terceiros

Este material é uma **produção autoral de estudo de Otávio Diniz**, construída a partir do que foi estudado e apresentado no curso, com reorganização, síntese, exemplos e explicações próprias.

Materiais de terceiros — como slides, transcrições integrais, bases, imagens ou documentos institucionais — **não são automaticamente redistribuídos** neste repositório. Cada ativo externo permanece sujeito às condições do respectivo titular.

Veja [`docs/FONTES_E_ESCOPO.md`](docs/FONTES_E_ESCOPO.md) e a [cobertura pedagógica da v1.1](docs/COBERTURA_PEDAGOGICA_V1.1.md).

## Uso do material

Otávio autoriza que o **conteúdo autoral deste repositório** seja consultado, utilizado, copiado e adaptado para fins de estudo e aprendizagem, sem necessidade de autorização individual para esse uso educacional.

Por decisão editorial, **não há um arquivo `LICENSE` separado** nesta versão. A autorização acima se aplica ao conteúdo autoral do repositório e não amplia direitos sobre materiais de terceiros citados ou referenciados.

## Contribuições e feedback

Contribuições são bem-vindas. Use **Issues** ou **Discussions** para:

- apontar inconsistência;
- sugerir explicação mais clara;
- pedir exemplo adicional;
- sugerir inclusão;
- relatar código que não executou como esperado;
- propor melhoria didática ou de organização.

Ao contribuir, indique o notebook, checkpoint e trecho envolvidos. Quando a sugestão depender do conteúdo do curso, informe também a aula ou fonte correspondente.

Veja [`CONTRIBUTING.md`](CONTRIBUTING.md).

## Evolução

O material é vivo: novas aulas podem enriquecer os notebooks ou justificar novas frentes, mas alterações devem preservar a progressão para iniciantes, a proveniência e o espelhamento entre Guia, Caderno, Biblioteca, Colab e VS Code.

As versões são lançadas em janelas pedagógicas estáveis, evitando alterações fragmentadas a cada aula. A v1.1 amplia a trilha até quatro eixos; os complementos independentes M1S02 e M1S03 permanecem na categoria `avaliacoes/`, sem alterar a referência histórica da v1.0.1. O changelog registra **o que entrou, o que foi melhorado, o que foi corrigido e o que foi reorganizado**.

Consulte [`CHANGELOG.md`](CHANGELOG.md) para acompanhar as mudanças.
