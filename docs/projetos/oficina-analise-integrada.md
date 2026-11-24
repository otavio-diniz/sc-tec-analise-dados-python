# Oficina autoral — análise integrada de atendimento

**Material didático fictício/sintético de treino, não avaliação formal.** Inspirado na sequência regular da Semana 07 (20, 22 e 23/10), com domínio e dados diferentes do projeto de varejo. Use o [Guia Pandas](../../notebooks/colab/03_pandas_analise_dados.ipynb) e o [Caderno](../../exercicios/colab/03_pandas_exercicios.ipynb).

**Pergunta:** entre chamados fictícios de uma biblioteca, quais categorias têm mais registros e qual a duração típica dos atendimentos conhecidos? O tempo ausente não é zero. Não confunda chamados com pessoas únicas.

## 1. Diagnosticar antes de tratar

Abra um notebook Python vazio no Colab ou VS Code. Execute:

```python
import pandas as pd
from io import StringIO
texto = '''chamado,categoria,minutos
1, acesso ,20
2,ACESSO,40
3,acervo,10
4,acervo,
5,acervo,30
5,acervo,30
6,apoio,15
'''
bruto = pd.read_csv(StringIO(texto))
print(bruto.shape)
print(bruto.isna().sum())
print(bruto.duplicated().sum())
print(bruto["categoria"].unique())
```

Preveja antes de executar: 7 linhas, uma duração ausente e uma linha integralmente repetida. Não remova linhas somente por categoria ou duração iguais.

## 2. Planejar e aplicar tratamento

Tente escrever a função que preserva o original, padroniza categoria e elimina apenas a cópia integral. Compare com a solução sintética:

```python
def tratar(tabela):
    copia = tabela.copy()
    copia["categoria"] = copia["categoria"].str.strip().str.lower()
    return copia.drop_duplicates()
limpo = tratar(bruto)
assert len(bruto) == 7 and len(limpo) == 6
assert limpo["minutos"].isna().sum() == 1
```

Justifique: a categoria representa o mesmo rótulo após padronização; a duração faltante permanece ausente. Neste caso o chamado 5 é uma cópia idêntica. Em dados reais verifique a chave e granularidade antes de decidir.

## 3. Interpretar e comparar denominadores

```python
resumo = limpo.groupby("categoria")["minutos"].agg(
    registros="size", duracoes_validas="count", media="mean")
print(resumo)
acima = limpo.loc[limpo["minutos"] > 20]
print(len(acima))
assert len(acima) == 2
assert resumo.loc["acervo","registros"] == 3
assert resumo.loc["acervo","duracoes_validas"] == 2
assert resumo.loc["acervo","media"] == 20
```

Acervo tem 3 chamados, mas só 2 durações válidas. A média é 20 minutos. Dois dos cinco chamados com duração conhecida superam 20 minutos. Não use 2/6 como proporção entre durações conhecidas. Não se conclui causa a partir desses dados.

## 4. Exportar e conferir

```python
from io import StringIO
saida = StringIO()
limpo.to_csv(saida, index=False)
saida.seek(0)
releitura = pd.read_csv(saida)
pd.testing.assert_frame_equal(limpo.reset_index(drop=True), releitura)
print("Conferência de exportação concluída")
```

Para guardar em arquivo, escolha um nome novo em sua pasta de treino e use to_csv com index=False, depois read_csv para conferir. Nunca sobrescreva a origem. Em Colab baixe a saída da sessão; em VS Code confira a pasta e o caminho.

## 5. Comunicar e recuperar

Escreva uma conclusão própria contendo número, unidade, recorte e limite. Qual categoria merece investigação? Que dado faltaria para medir pessoas únicas, causas ou qualidade de atendimento? Proponha uma ação de coleta, não uma causalidade inventada. Documente o objetivo, decisões, resultado e limitação em README de treino. [Git/GitHub do zero](../ambientacao/git-github-do-zero.md).

**COMPREENDER:** explicar size versus count e ausência versus zero. **EXECUTAR:** reproduzir e conferir as três etapas. **DIAGNOSTICAR:** explicar por que não usar IDs como medida e por que o resultado não demonstra causa.
