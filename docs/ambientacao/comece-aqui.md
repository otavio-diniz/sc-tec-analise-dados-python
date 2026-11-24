# Comece aqui — do download ao primeiro exercício

Você não precisa instalar todas as ferramentas. Escolha o que quer praticar.

| Objetivo | Onde executar | O que abrir |
|---|---|---|
| Python, Pandas e NumPy sem instalação local | Google Colab | arquivos .ipynb em notebooks/colab e exercicios/colab |
| Python local | VS Code com Python/Jupyter | arquivos .ipynb em notebooks/vscode e exercicios/vscode |
| SQL real | PostgreSQL + pgAdmin (ou psql) | arquivos .sql e .psql em labs/postgresql |
| MongoDB real | MongoDB Community + Compass (ou mongosh) | arquivos .json e .js em labs/mongodb |

## 1. Obtenha uma cópia dos arquivos

1. Abra [o repositório](https://github.com/otavio-diniz/sc-tec-analise-dados-python).
2. Na aba **Code**, clique no botão verde **Code**, escolha **Download ZIP**.
3. No Windows, localize o ZIP em Downloads, clique com o botão direito → **Extrair tudo**. Abra a pasta extraída que contém README.md, notebooks, exercicios e labs. Não tente importar um CSV de dentro do ZIP.
4. Guarde a cópia em pasta de estudo onde você pode escrever. O conteúdo original permanece no GitHub. Se preferir Git, use `git clone https://github.com/otavio-diniz/sc-tec-analise-dados-python.git` e abra a pasta clonada. Não precisa de Git para usar o ZIP.
5. No GitHub, visualizar um .ipynb não executa o código. Para um arquivo avulso, abra sua página e use **Download raw file** quando disponível; não salve o HTML da página como .sql ou .json.

## 2. Google Colab: primeira execução

Abra [Colab](https://colab.research.google.com/). Menu **Arquivo → Fazer upload de notebook** (ou selecione Upload na janela de abertura), escolha o [Guia 01](../../notebooks/colab/01_python_fundamentos.ipynb) da pasta extraída. Outra opção: na abertura de notebooks, aba GitHub, informe o repositório e escolha o arquivo em notebooks/colab. Conecte a sessão e execute uma célula com o botão triangular à esquerda; teste `print("Olá, dados!")`. A saída esperada é Olá, dados!. Se a sessão terminar, variáveis e arquivos temporários podem desaparecer. Salve a cópia quando necessário. Faça o Caderno correspondente depois da leitura do Guia.

## 3. VS Code: primeira execução

Com [VS Code](https://code.visualstudio.com/download) e [Python](https://www.python.org/downloads/) disponíveis em ambiente autorizado, abra **File → Open Folder** e escolha a raiz extraída. Na barra Extensions, localize **Python** e **Jupyter** da Microsoft; instale somente se permitido. Abra o Guia 01 em notebooks/vscode, escolha **Select Kernel** no alto e selecione o interpretador Python autorizado. Execute a célula de teste `print("Olá, dados!")`. Se não houver kernel ou dependência, consulte [Jupyter no VS Code](https://code.visualstudio.com/docs/datascience/jupyter-notebooks). O terminal integrado e a célula de notebook são ambientes diferentes; use o kernel correto. Nunca copie senha para código.

## 4. Bancos de dados: não execute tudo no notebook

Os notebooks 05/06 ensinam conceitos e simulam resultados com SQLite/Python. Não são clientes gráficos nem executam automaticamente PostgreSQL/MongoDB. Para praticar diretamente com o motor:

- [PostgreSQL e pgAdmin: primeiro banco, SQL, importação CSV e relatórios](primeiro-acesso-postgresql.md).
- [MongoDB e Compass: primeira coleção, importação JSON, filtros e agregações](primeiro-acesso-mongodb.md).
- [Fontes oficiais e ferramentas](fontes-oficiais-bancos.md).

Se não tiver servidor autorizado, pratique primeiro os exemplos em notebook e retome o laboratório real quando o ambiente estiver disponível. MySQL/Workbench são alternativas de referência, não requisitos para os laboratórios PostgreSQL.

[Percurso das semanas](../PERCURSO_DAS_SEMANAS.md) · [Voltar ao README](../../README.md).
