-- ================================ Localizacao =====================================================
INSERT INTO
  Localizacao (id, latitude, longitude)
VALUES
  (1, 'la1', 'lo1'),
  (2, 'la2', 'lo2'),
  (3, 'la3', 'lo3'),
  (4, 'la4', 'lo4'),
  (5, 'la5', 'lo5'),
  (6, 'la6', 'lo6'),
  (7, 'la7', 'lo7'),
  (8, 'la8', 'lo8'),
  (9, 'la9', 'lo9'),
  (10, 'la10', 'lo10');

-- ================================ Rota =====================================================
INSERT INTO
  Rota (id, nome)
VALUES
  (1, 'Rota1'),
  (2, 'Rota2'),
  (3, 'Rota3'),
  (4, 'Rota4'),
  (5, 'Rota5'),
  (6, 'Rota6'),
  (7, 'Rota7'),
  (8, 'Rota8'),
  (9, 'Rota9'),
  (10, 'Rota10');

-- ================================ Onibus =====================================================
INSERT INTO
  Onibus (id, marca, modelo, status)
VALUES
  (1, 'Marca1', 'Modelo1', 'operante':: Onibus_status),
  (2, 'Marca2', 'Modelo2', 'inativo':: Onibus_status),
  (3, 'Marca3', 'Modelo3', 'manutencao':: Onibus_status),
  (4, 'Marca4', 'Modelo4', 'operante':: Onibus_status),
  (5, 'Marca5', 'Modelo5', 'operante':: Onibus_status),
  (6, 'Marca6', 'Modelo6', 'operante':: Onibus_status),
  (7, 'Marca7', 'Modelo7', 'operante':: Onibus_status),
  (8, 'Marca8', 'Modelo8', 'operante':: Onibus_status),
  (9, 'Marca9', 'Modelo9', 'operante':: Onibus_status),
  (
    10,
    'Marca10',
    'Modelo10',
    'operante':: Onibus_status
  );

-- ================================ Ponto =====================================================
INSERT INTO
  Ponto (id, nome, caixa)
VALUES
  (1, 'Nome1', 10000.0),
  (2, 'Nome2', 20000.0),
  (3, 'Nome3', 30000.0),
  (4, 'Nome4', 40000.0),
  (5, 'Nome5', 50000.0),
  (6, 'Nome6', 60000.0),
  (7, 'Nome7', 70000.0),
  (8, 'Nome8', 80000.0),
  (9, 'Nome9', 90000.0),
  (10, 'Nome10', 100000.0);

-- ================================ Passageiro =====================================================
INSERT INTO
  Passageiro (id, saldo)
VALUES
  (1, 10.0),
  (2, 300.0),
  (3, 6500.0),
  (4, 10000.0),
  (5, 15000.0),
  (6, 20000.0),
  (7, 25000.0),
  (8, 30000.0),
  (9, 35000.0),
  (10, 40000.0);

-- ================================ PassageiroPreferencial =====================================================
INSERT INTO
  PassageiroPreferencial (id, tipo)
VALUES
  (1, 'idoso':: PassageiroPreferencial_tipo);

-- ================================ PassageiroEstudante =====================================================
INSERT INTO
  PassageiroEstudante (id, desconto, periodo, instituicao)
VALUES
  (
    1,
    0.5,
    'matutino':: PassageiroEstudante_periodo,
    'unioeste'
  ),
  (
    2,
    0.5,
    'vespertino':: PassageiroEstudante_periodo,
    'unioeste'
  ),
  (
    3,
    0.5,
    'noturno':: PassageiroEstudante_periodo,
    'univel'
  );

-- ================================ Endereco =====================================================
INSERT INTO
  Endereco (id, rua, cidade, bairro, numero)
VALUES
  (1, 'Rua1', 'Cascavel', 'Universitario', 1),
  (2, 'Rua2', 'Cascavel', 'Universitario', 2),
  (3, 'Rua3', 'Cascavel', 'Universitario', 3),
  (4, 'Rua4', 'Cascavel', 'Universitario', 4),
  (5, 'Rua5', 'Cascavel', 'Universitario', 5),
  (6, 'Rua6', 'Cascavel', 'Universitario', 6),
  (7, 'Rua7', 'Cascavel', 'Universitario', 7),
  (8, 'Rua8', 'Cascavel', 'Universitario', 8),
  (9, 'Rua9', 'Cascavel', 'Universitario', 9),
  (10, 'Rua10', 'Cascavel', 'Universitario', 10);

-- ================================ Pessoa =====================================================
INSERT INTO
  Pessoa (id, nome, telefone, rg, cpf)
VALUES
  (1, 'Nome1', 'Telefone1', 'Rg1', 'Cpf1'),
  (2, 'Nome2', 'Telefone2', 'Rg2', 'Cpf2'),
  (3, 'Nome3', 'Telefone3', 'Rg3', 'Cpf3'),
  (4, 'Nome4', 'Telefone4', 'Rg4', 'Cpf4'),
  (5, 'Nome5', 'Telefone5', 'Rg5', 'Cpf5'),
  (6, 'Nome6', 'Telefone6', 'Rg6', 'Cpf6'),
  (7, 'Nome7', 'Telefone7', 'Rg7', 'Cpf7'),
  (8, 'Nome8', 'Telefone8', 'Rg8', 'Cpf8'),
  (9, 'Nome9', 'Telefone9', 'Rg9', 'Cpf9'),
  (10, 'Nome10', 'Telefone10', 'Rg10', 'Cpf10');

-- ================================ Funcionario =====================================================
INSERT INTO
  Funcionario (id, carga_horaria)
VALUES
  (1, 8),
  (2, 6),
  (3, 8),
  (4, 6),
  (5, 8),
  (6, 6),
  (7, 8),
  (8, 6),
  (9, 8),
  (10, 6);

INSERT INTO
  FuncionarioMotorista (id, cnh)
VALUES
  (1, 'Cnh1'),
  (2, 'Cnh2'),
  (3, 'Cnh3'),
  (4, 'Cnh4'),
  (5, 'Cnh5'),
  (6, 'Cnh6'),
  (7, 'Cnh7'),
  (8, 'Cnh8'),
  (9, 'Cnh9'),
  (10, 'Cnh10');

INSERT INTO
  FuncionarioCobrador (id, tipo)
VALUES
  (2, 'ponto':: FuncionarioCobrador_tipo),
  (3, 'ponto':: FuncionarioCobrador_tipo),
  (4, 'ponto':: FuncionarioCobrador_tipo),
  (5, 'ponto':: FuncionarioCobrador_tipo),
  (6, 'ponto':: FuncionarioCobrador_tipo),
  (7, 'ponto':: FuncionarioCobrador_tipo),
  (8, 'ponto':: FuncionarioCobrador_tipo),
  (9, 'ponto':: FuncionarioCobrador_tipo),
  (10, 'ponto':: FuncionarioCobrador_tipo);

INSERT INTO
  FuncionarioLimpeza (id, empresa, tipo)
VALUES
  (3, 'empresa1', 'ponto':: FuncionarioLimpeza_tipo),
  (4, 'empresa1', 'ponto':: FuncionarioLimpeza_tipo),
  (5, 'empresa1', 'ponto':: FuncionarioLimpeza_tipo),
  (6, 'empresa1', 'ponto':: FuncionarioLimpeza_tipo),
  (7, 'empresa1', 'ponto':: FuncionarioLimpeza_tipo),
  (8, 'empresa1', 'ponto':: FuncionarioLimpeza_tipo),
  (9, 'empresa1', 'ponto':: FuncionarioLimpeza_tipo),
  (10, 'empresa1', 'ponto':: FuncionarioLimpeza_tipo);

-- ================================ RotaLocalizacaoInicial =====================================================
INSERT INTO
  RotaLocalizacaoInicial (id_rota, id_localizacao)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4);

-- ================================ RotaLocalizacaoFinal =====================================================
INSERT INTO
  RotaLocalizacaoFinal (id_rota, id_localizacao)
VALUES
  (1, 5),
  (2, 6),
  (3, 7),
  (4, 8);

-- ================================ LocalizacaoPonto =====================================================
INSERT INTO
  LocalizacaoPonto (id_localizacao, id_ponto)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10);

-- ================================ LocalizacaoOnibus =====================================================
INSERT INTO
  LocalizacaoOnibus (id_localizacao, id_onibus)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10);

-- ================================ OnibusPassageiro =====================================================
INSERT INTO
  OnibusPassageiro (id_onibus, id_passageiro)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10);

-- ================================ PassageiroPessoa =====================================================
INSERT INTO
  PassageiroPessoa (id_passageiro, id_pessoa)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9),
  (10, 10);

-- ================================ MotoristaOnibus =====================================================
INSERT INTO
  MotoristaOnibus (id_motorista, id_onibus)
VALUES
  (1, 1),
  (2, 2),
  (3, 3);

-- ================================ PontoOnibus =====================================================
INSERT INTO
  PontoOnibus (id_ponto, id_onibus)
VALUES
  (1, 1),
  (2, 2),
  (3, 3);

-- ================================ PontoEndereco =====================================================
INSERT INTO
  PontoEndereco (id_ponto, id_endereco)
VALUES
  (1, 1),
  (2, 2),
  (3, 3);

-- ================================ RotaPonto =====================================================
INSERT INTO
  RotaPonto (id_rota, id_ponto)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4);

-- ================================ CobradorOnibus =====================================================
INSERT INTO
  CobradorOnibus (id_cobrador, id_onibus)
VALUES
  (2, 1),
  (2, 2),
  (2, 3);

-- ================================ CobradorPonto =====================================================
INSERT INTO
  CobradorPonto (id_cobrador, id_ponto)
VALUES
  (2, 1),
  (2, 2),
  (2, 3);

-- ================================ FuncionarioEndereco =====================================================
INSERT INTO
  FuncionarioEndereco (id_funcionario, id_endereco)
VALUES
  (1, 1),
  (2, 2),
  (3, 3);

-- ================================ FuncionarioPessoa =====================================================
INSERT INTO
  FuncionarioPessoa (id_funcionario, id_pessoa)
VALUES
  (1, 1),
  (2, 2),
  (3, 3);
