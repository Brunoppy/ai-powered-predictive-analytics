-- Creating table for historical business data
CREATE TABLE historical_data (
    id SERIAL PRIMARY KEY,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    feature_1 NUMERIC,
    feature_2 NUMERIC,
    feature_3 NUMERIC,
    actual_result NUMERIC
);

-- Creating table for storing AI predictions
CREATE TABLE ai_predictions (
    id SERIAL PRIMARY KEY,
    prediction_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    predicted_value NUMERIC,
    model_version VARCHAR(50)
);
