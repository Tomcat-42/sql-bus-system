/*
 Assercao 1: Nao pode existir nenhum estudante com desconto < 0.5
 */
DO $$DECLARE student_count integer;

BEGIN
SELECT
  count(*) INTO student_count
FROM
  PassageiroEstudante
WHERE
  desconto < 0.5;

assert student_count = 0,
'Nao pode existir nenhum estudante com desconto < 0.5';

END $$;
