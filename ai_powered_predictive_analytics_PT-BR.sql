-- Criando tabela para armazenar dados históricos de negócios 
CREATE TABLE dados_historicos (
    id SERIAL PRIMARY KEY,
    data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    atributo_1 NUMERIC,
    atributo_2 NUMERIC,
    atributo_3 NUMERIC,
    resultado_real NUMERIC
);

-- Criando tabela para armazenar previsões de IA
CREATE TABLE previsoes_ia (
    id SERIAL PRIMARY KEY,
    data_previsao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    valor_previsto NUMERIC,
    versao_modelo VARCHAR(50)
);
