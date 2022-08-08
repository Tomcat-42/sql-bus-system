/*
 Query 1: Verifica o saldo do passageiro caso ele seja estudante
 */
SELECT
  nome,
  saldo
FROM
  PassageiroEstudante
  INNER JOIN Passageiro USING (id)
  INNER JOIN Pessoa USING (id);

/*
 Query 2: Mostra as latitudes e longitudes de todos as posições dos ônibus operantes.
 */
SELECT
  latitude,
  longitude
FROM
  LocalizacaoOnibus
  INNER JOIN Onibus ON LocalizacaoOnibus.id_onibus = Onibus.id
  INNER JOIN Localizacao ON LocalizacaoOnibus.id_localizacao = Localizacao.id
WHERE
  Onibus.status = 'operante':: Onibus_status;

/*
 Query 3:  Mostra o nome e cpf dos funcionários que trabalham na cidade 'Cascavel'.
 */
SELECT
  nome,
  cpf
FROM
  FuncionarioEndereco
  INNER JOIN Funcionario ON FuncionarioEndereco.id_funcionario = Funcionario.id
  INNER JOIN Pessoa ON FuncionarioEndereco.id_funcionario = Pessoa.id
  INNER JOIN Endereco ON FuncionarioEndereco.id_endereco = Endereco.id
WHERE
  Endereco.cidade = 'Cascavel';

/*
 Query 4: Mostra o nome dos cobradores que trabalham em algum ponto no ponto do bairro 'universitario'.
 */
SELECT
  DISTINCT nome
FROM
  CobradorPonto
  INNER JOIN Pessoa ON CobradorPonto.id_cobrador = Pessoa.id
  INNER JOIN PontoEndereco ON CobradorPonto.id_ponto = PontoEndereco.id_ponto
WHERE
  PontoEndereco.id_endereco IN (
    SELECT
      id
    FROM
      Endereco
    WHERE
      Endereco.bairro = 'Universitario'
  );

/*
 Query 5:   Mostra o nome, cpf e rg dos Passageiros estudantes que frequentam o período 'matutino'.
 */
SELECT
  nome,
  cpf,
  rg,
  instituicao
FROM
  PassageiroEstudante
  INNER JOIN Passageiro ON PassageiroEstudante.id = Passageiro.id
  INNER JOIN Pessoa ON Passageiro.id = Pessoa.id
WHERE
  periodo = 'matutino':: PassageiroEstudante_periodo;

/*
 Query 6: Busca pelos pontos que possuem saldo maior que 5000.
 */
SELECT
  nome,
  caixa
FROM
  Ponto
WHERE
  caixa > 5000;

/*
 Query 7: Mostra os dados de quais ônibus já passaram no ponto com nome 'Nome1'.
 */
SELECT
  Onibus.*
FROM
  PontoOnibus
  INNER JOIN Onibus ON PontoOnibus.id_onibus = Onibus.id
  INNER JOIN Ponto ON PontoOnibus.id_ponto = Ponto.id
WHERE
  Ponto.nome = 'Nome1';

/*
 Query 8: Mostra os dados de todos os pontos que estão na 'rota1'
 */
SELECT
  Ponto.*
FROM
  RotaPonto
  INNER JOIN Ponto ON RotaPonto.id_ponto = Ponto.id
  INNER JOIN Rota ON RotaPonto.id_rota = Rota.id
WHERE
  Rota.nome = 'Rota1';

/*
 Query 9: Mostra dados sobre a localização inicial e final na rota de nome 'Rota1'.
 */
SELECT
  *
FROM
  Localizacao
WHERE
  id IN (
    SELECT
      id_localizacao
    FROM
      RotaLocalizacaoInicial
    WHERE
      id_rota = (
        SELECT
          id
        FROM
          Rota
        WHERE
          nome = 'Rota1'
      )
    UNION
    SELECT
      id_localizacao
    FROM
      RotaLocalizacaoFinal
    WHERE
      id_rota = (
        SELECT
          id
        FROM
          Rota
        WHERE
          nome = 'Rota1'
      )
  );

/*
 Query 10: Mostra a rua e o bairro do primeiro ponto da rota de Nome 'Rota1'.
 */
SELECT
  rua,
  bairro
FROM
  PontoEndereco
  INNER JOIN Endereco ON PontoEndereco.id_endereco = Endereco.id
  INNER JOIN LocalizacaoPonto ON PontoEndereco.id_ponto = LocalizacaoPonto.id_ponto
WHERE
  id_localizacao IN (
    SELECT
      id_localizacao
    FROM
      RotaLocalizacaoInicial
      INNER JOIN Rota ON RotaLocalizacaoInicial.id_rota = Rota.id
    WHERE
      nome = 'Rota1'
  );
