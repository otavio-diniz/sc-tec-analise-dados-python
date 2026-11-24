# Semana 08 — HTML, scraping responsável, ETL e SQLite: aprenda do zero

**SC TEC T8 — MATERIAL DIDÁTICO FICTÍCIO/SINTÉTICO, NÃO OFICIAL.** Esta oficina é uma **ponte** entre os Guias existentes de Python/Pandas e o Guia 05 de SQL/PostgreSQL. Não é uma cópia do notebook, do HTML ou da base usados pela instrutora em 27 e 29/10.

## 1. Reconheça as ferramentas antes de executar

- **HTML** organiza o conteúdo da página em elementos e atributos.
- **Seletor CSS** identifica um grupo de elementos, por exemplo `article.produto`.
- **BeautifulSoup** lê HTML e permite `.select()` e `.get()`; é uma **biblioteca Python**, não um banco.
- **requests** é uma biblioteca Python para HTTP; obter uma página exige tratar status de resposta, timeout, autorização e limites de coleta.
- **ETL** é método: **EXTRACT** (coletar) → **TRANSFORM** (converter/limpar/verificar) → **LOAD** (guardar).
- **SQLite** é motor SQL embutido, em geral disponível em Python via `sqlite3`; não depende de servidor externo para um banco em memória.
- **PostgreSQL** é outro motor, geralmente serviço separado; o **pgAdmin** é um cliente gráfico para ele. **Não executar SQL PostgreSQL no notebook como se fosse SQLite.**

## 2. Comece sem internet e sem instalar nada

Abra o [Guia 05 — Google Colab](../../notebooks/colab/05_sql_postgresql.ipynb) ou seu par [VS Code](../../notebooks/vscode/05_sql_postgresql.ipynb). Na **Etapa 0**, execute de cima para baixo o exemplo local com dois `article` em HTML fictício. A célula usa `html.parser`, `decimal.Decimal` e `sqlite3` da biblioteca padrão.

A trilha é: `HTML inventado` → ler atributos de `article.produto` → transformar `10,00` em **1000 centavos** → carregar duas linhas no SQLite temporário → `SELECT COUNT(*),SUM(...)` → conferir **2 linhas e R$ 40,00**. Componha uma explicação sua para cada seta, em vez de apenas olhar o resultado.

A professora utilizou BeautifulSoup nas demonstrações da semana; o parser padrão da oficina é um **substituto didático autoral**, não evidência de que a professora usou essa implementação.

## 3. Como seria com BeautifulSoup quando já disponível?

Trecho **ilustrativo**, não executado automaticamente no notebook:

```python
from bs4 import BeautifulSoup
soup = BeautifulSoup(html_ficticio, "html.parser")
for card in soup.select("article.produto"):
    print(card.get("data-codigo"), card.get("data-preco"))
```

Instalar pacotes é uma decisão técnica distinta. Se o ambiente autorizado já possuir BeautifulSoup, este código lê apenas a string fictícia. Não crie dependência de internet para concluir o exemplo.

## 4. E se o HTML viesse de um site?

A professora discutiu `requests` e respostas HTTP. Antes de qualquer requisição real, verifique se o domínio permite a coleta, leia condições aplicáveis, respeite `robots.txt` quando pertinente, evite dados pessoais, limite frequência e tempo de espera, confira `status_code` e proteja-se contra alteração de layout. **Este roteiro não fornece um destino externo nem executa scraping online.** Reunir a informação com autorização é uma condição diferente de saber escrever o código.

## 5. Diagnóstico de problemas

| Sintoma | Causa provável | Verificação segura |
|---|---|---|
| Zero elementos localizados | HTML/atributo/classe diferente | Inspecione `html_ficticio` antes da transformação |
| Conversão de preço falha | Separador decimal, símbolo de moeda ou vazio | Normalize e valide com Decimal |
| Valor total incorreto | Confundir quantidade e preço unitário | Conte registros e unidades separadamente |
| Tabela não existe | `CREATE TABLE` não foi executado após reiniciar sessão | Execute as células na sequência |
| Script SQL de PostgreSQL falha no SQLite | Dialeto/motor diferentes | Abra o tutorial PostgreSQL e rode no banco certo |
| Resultado sumiu | SQLite em memória é temporário | Reexecute o exemplo, não presuma persistência |

**Dica de Ouro:** o pipeline só merece confiança quando se consegue descrever a entrada, o tratamento, a saída, a verificação de consistência e os limites. O exemplo de duas linhas é material de treino, não prova de que os 92 mil registros da base institucional foram carregados.

## 6. Recuperação ativa (sem gabarito imediato)

Explique em palavras próprias: o que é o papel de uma função `extrair`, `transformar` e `carregar`? O que muda quando o mesmo script lê dados de HTTP? Quando é melhor SQLite e quando faz sentido um servidor PostgreSQL? Por que abrir pgAdmin não substitui a etapa de carregar/consultar dados?

[Voltar ao percurso por aula](../PERCURSO_SEMANAS_08_A_11.md) · [Primeiro acesso PostgreSQL](primeiro-acesso-postgresql.md) · [Fontes oficiais](fontes-oficiais-bancos.md).

## Oficina executável ampliada no Guia 02
No Guia 02, a oficina Semana 08 reúne requests com adaptador HTTP controlado, BeautifulSoup, Pandas, validação de identificadores, preço em centavos, estoque inteiro, exportação CSV em memória, carga SQLite e indicadores. Três registros autorais (não docentes) permitem conferir quantidade, média, máximo, estoque e categoria. HTTP 404 interrompe a carga. A simulação não realiza coleta externa. [Guia 02 Colab](../../notebooks/colab/02_python_desenvolvimento.ipynb) · [Caderno 02 Colab](../../exercicios/colab/02_python_desenvolvimento_exercicios.ipynb).
