# SC TEC — Análise de Dados com Python | Guias Vivos e Cadernos Práticos

Material de estudo progressivo para quem está começando em Python e análise de dados e quer **entender a lógica**, não apenas copiar código.

O repositório organiza conceitos, exemplos e exercícios em uma sequência pedagógica própria:

**Python — Fundamentos Absolutos → Python — Desenvolvimento → Pandas — Análise de Dados**

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

### 1. Python — Fundamentos Absolutos

Sintaxe visual, strings, tipos, `None`, variáveis, `input()`, conversão, erros, operadores aritméticos, `/` × `//` × `%`, potenciação, quebra de linha, f-strings, arredondamento e apresentação de valores.

### 2. Python — Desenvolvimento

Comparações, operadores lógicos, `if/elif/else`, listas, tuplas, dicionários, indexação, estruturas aninhadas, `for`, `range()`, contador × acumulador, `while`, `break`, `continue`, funções, `return`, strings, regex, `lambda` e mini-análises sintéticas.

### 3. Pandas — Análise de Dados

Pandas e `DataFrame`, entrada de dados, inspeção, tipos, seleção e filtros, ausências, duplicidades, cópia de trabalho, transformação e resumo de colunas, CSV/JSON/Excel, datas, `NaT`, durações e interpretação analítica.

O Guia Pandas é dividido em **3 partes e 7 checkpoints** para reduzir a carga cognitiva:

1. Pandas, DataFrame e entrada de dados;
2. inspeção e tipos;
3. seleção e filtros;
4. ausências, duplicidades e cópia de trabalho;
5. transformação e resumo;
6. CSV, JSON e Excel;
7. datas, durações e interpretação.

Cada Guia Vivo possui um **Caderno Prático** correspondente, organizado pelos mesmos checkpoints.

### 4. Biblioteca Viva — Python e Pandas

A **Biblioteca Viva** funciona como referência rápida para termos, funções, símbolos e ideias que podem interromper a leitura. Cada entrada procura explicar **o que é, como ler, quando aparece, erro comum e conexão com outros conceitos**.

Há uma versão para **Google Colab** e outra para **VS Code**. O corpo conceitual é equivalente; mudam somente orientações operacionais de ambiente, como upload/sessão no Colab e kernel/caminhos locais/persistência no VS Code.

## Estado atual

**Versão pedagógica pública atual: v1.0.1 — validada por Otávio.**

- Guia Python — Fundamentos Absolutos: validado.
- Guia Python — Desenvolvimento: validado.
- Guia Pandas — Análise de Dados: validado.
- Cadernos Práticos de Fundamentos, Desenvolvimento e Pandas: validados.
- Versões Google Colab e VS Code: conciliadas conceitualmente.
- Corte documental atual: conteúdos e transcrições tratados **até 02/10/2026**.
- Aprendizagem em espiral e revisões acumulativas incorporadas.
- Bibliotecas Vivas Colab e VS Code publicadas.
- A v1.0.1 melhora a baseline sem ampliar o corte acadêmico.

A validação é pedagógica e técnica dentro do escopo destes materiais; ela não representa avaliação formal, certificação ou endosso institucional.

## Quickstart

### Clonar o repositório

```bash
git clone https://github.com/otavio-diniz/sc-tec-analise-dados-python.git
cd sc-tec-analise-dados-python
```

### Google Colab

1. Abra um notebook de `notebooks/colab/`.
2. Leia um checkpoint e execute os exemplos na ordem.
3. Abra o Caderno correspondente em `exercicios/colab/`.
4. Faça sua tentativa **antes** de consultar a solução comentada.
5. Volte ao Guia sempre que o exercício revelar uma dúvida conceitual.
6. Quando um termo técnico travar a leitura, consulte `biblioteca/colab/`.

Arquivos enviados ao runtime do Colab podem desaparecer quando a sessão reinicia.

### VS Code

1. Abra um `.ipynb` de `notebooks/vscode/`.
2. Selecione um kernel/interpretador Python já disponível no ambiente.
3. Execute as células pelo controle do notebook ou com `Shift + Enter`.
4. Use o Caderno equivalente em `exercicios/vscode/` para praticar.
5. Para consulta rápida de conceitos e diferenças operacionais, use `biblioteca/vscode/`.

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

A v1.0.1 também adota uma progressão em **espiral**: primeiro contato → prática → retorno → recuperação → aprofundamento. Blocos **🔁 Você já viu isso** e revisões acumulativas ajudam a recuperar conceitos anteriores antes de avançar.

No Pandas, cada conceito procura seguir:

**o que é → como ler a sintaxe → exemplo → comparação → resultado → interpretação → validação**

Mais detalhes em [`docs/METODO_PEDAGOGICO.md`](docs/METODO_PEDAGOGICO.md).

## Complemento de apoio

Alguns recursos são úteis para compreensão, comparação ou continuidade didática, mas não foram identificados nas aulas/exercícios dentro do corte documental correspondente. Nesses casos, aparecem como **(complemento de apoio)**.

A marca:

- não significa que o recurso seja incorreto;
- evita confundi-lo com conteúdo já trabalhado;
- é aplicada de forma granular;
- não transforma o recurso em requisito obrigatório do checkpoint.

## Estrutura

```text
sc-tec-analise-dados-python/
├── README.md
├── CONTRIBUTING.md
├── CHANGELOG.md
├── notebooks/
│   ├── colab/
│   │   ├── 01_python_fundamentos.ipynb
│   │   ├── 02_python_desenvolvimento.ipynb
│   │   └── 03_pandas_analise_dados.ipynb
│   └── vscode/
│       ├── 01_python_fundamentos.ipynb
│       ├── 02_python_desenvolvimento.ipynb
│       └── 03_pandas_analise_dados.ipynb
├── biblioteca/
│   ├── colab/
│   │   └── 04_biblioteca_viva_python_pandas.ipynb
│   └── vscode/
│       └── 04_biblioteca_viva_python_pandas.ipynb
├── exercicios/
│   ├── colab/
│   │   ├── 01_python_fundamentos_exercicios.ipynb
│   │   ├── 02_python_desenvolvimento_exercicios.ipynb
│   │   └── 03_pandas_exercicios.ipynb
│   └── vscode/
│       ├── 01_python_fundamentos_exercicios.ipynb
│       ├── 02_python_desenvolvimento_exercicios.ipynb
│       └── 03_pandas_exercicios.ipynb
└── docs/
    ├── FONTES_E_ESCOPO.md
    └── METODO_PEDAGOGICO.md
```

## Validação e limites

A revisão dos materiais confronta aulas, transcrições e notebooks de referência com os Guias e Cadernos, incluindo explicações orais, dúvidas, correções e exemplos improvisados quando têm valor didático.

As versões Colab e VS Code preservam o **mesmo conteúdo conceitual**; diferenças são restritas ao ambiente, execução e caminhos.

A validação técnica não substitui documentação oficial das bibliotecas e ferramentas. Algumas células que dependem de arquivos externos exigem que o arquivo esteja disponível no ambiente de execução.

## Fontes, autoria e direitos de terceiros

Este material é uma **produção autoral de estudo de Otávio Diniz**, construída a partir do que foi estudado e apresentado no curso, com reorganização, síntese, exemplos e explicações próprias.

Materiais de terceiros — como slides, transcrições integrais, bases, imagens ou documentos institucionais — **não são automaticamente redistribuídos** neste repositório. Cada ativo externo permanece sujeito às condições do respectivo titular.

Veja [`docs/FONTES_E_ESCOPO.md`](docs/FONTES_E_ESCOPO.md).

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

As versões são lançadas em janelas pedagógicas estáveis, evitando alterações fragmentadas a cada aula. O changelog registra **o que entrou, o que foi melhorado, o que foi corrigido e o que foi reorganizado**.

Consulte [`CHANGELOG.md`](CHANGELOG.md) para acompanhar as mudanças.
