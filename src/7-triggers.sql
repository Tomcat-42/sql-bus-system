-- Cria a tabela de logs
CREATE TABLE
  IF NOT EXISTS PontoLogs (
    id_ponto int,
    old_name text,
    new_name text,
    changed_on timestamp
  );

-- Criacao da funcao de trigger
CREATE
OR REPLACE FUNCTION log_name_changes () RETURNS TRIGGER LANGUAGE PLPGSQL AS $$BEGIN IF NEW.nome <> OLD.nome THEN
INSERT INTO
  PontoLogs (id_ponto, old_name, new_name, changed_on)
VALUES
  (OLD.id, OLD.nome, NEW.nome, now());

END IF;

RETURN NEW;

END;

$$;

-- Criacao do trigger na tabela de pontos
CREATE TRIGGER name_changes BEFORE
UPDATE
  ON Ponto FOR EACH ROW EXECUTE PROCEDURE log_name_changes ();
