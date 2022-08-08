-- Alteracao do primeiro ponto na tabela de pontos
UPDATE
  Ponto
SET
  nome = 'Ponto 1'
WHERE
  id = 1;

-- Checagem do log de alteracao do primeiro ponto
SELECT
  *
FROM
  PontoLogs;
