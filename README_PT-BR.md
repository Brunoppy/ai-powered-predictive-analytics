# Análise Preditiva com IA

Este projeto integra bancos de dados SQL com modelos de IA baseados em Python para gerar análises preditivas para a tomada de decisões empresariais.

## Funcionalidades
- Armazena dados históricos de negócios
- Utiliza modelos de IA para previsão
- Suporta integração futura com plataformas de Big Data

## Exemplo: Executando o Modelo de IA
Um script simples em Python pode consultar o banco de dados SQL, treinar um modelo e armazenar previsões.

```python
import pandas as pd
import psycopg2
from sklearn.linear_model import LinearRegression

# Conectar ao banco de dados
conn = psycopg2.connect("dbname=meubanco user=meuusuario password=minhasenha host=localhost")

# Carregar dados
df = pd.read_sql("SELECT * FROM dados_historicos", conn)

# Treinar um modelo simples
X = df[['atributo_1', 'atributo_2', 'atributo_3']]
y = df['resultado_real']
modelo = LinearRegression().fit(X, y)

# Fazer previsões
df['previsto'] = modelo.predict(X)

# Armazenar previsões no banco de dados
cursor = conn.cursor()
for _, row in df.iterrows():
    cursor.execute("INSERT INTO previsoes_ia (valor_previsto, versao_modelo) VALUES (%s, %s)", (row['previsto'], 'v1.0'))

conn.commit()
cursor.close()
conn.close()
```