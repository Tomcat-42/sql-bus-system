-- ============================================ DESCRIPTION ============================================================
COMMENT ON TABLE Localizacao IS 'Uma localização genérica';

COMMENT ON COLUMN Localizacao.id IS 'Identificador de localização';

COMMENT ON COLUMN Localizacao.latitude IS 'String contendo a latitude da localização';

COMMENT ON COLUMN Localizacao.longitude IS 'String contendo a longitude da localização.';

COMMENT ON TABLE Rota IS 'Rotas realizadas pelos ônibus';

COMMENT ON COLUMN Rota.id IS 'Identificador de rota';

COMMENT ON COLUMN Rota.nome IS 'Nome da rota';

COMMENT ON TABLE Onibus IS 'Ônibus em posse da empresa';

COMMENT ON COLUMN Onibus.id IS 'Identificador de ônibus';

COMMENT ON COLUMN Onibus.marca IS 'Marca do ônibus';

COMMENT ON COLUMN Onibus.modelo IS 'Modelo do ônibus';

COMMENT ON COLUMN Onibus.status IS 'Status do ônibus';

COMMENT ON TABLE Ponto IS 'Pontos de ônibus por onde o ônibus passa';

COMMENT ON COLUMN Ponto.id IS 'Identificador de ponto';

COMMENT ON COLUMN Ponto.nome IS 'Nome do ponto';

COMMENT ON COLUMN Ponto.caixa IS 'Quantidade em caixa do ponto';

COMMENT ON TABLE Passageiro IS 'Passageiro que utiliza o transporte público';

COMMENT ON COLUMN Passageiro.id IS 'Identificador de passageiro';

COMMENT ON COLUMN Passageiro.saldo IS 'Saldo de passagens do passageiro';

COMMENT ON TABLE PassageiroPreferencial IS 'Passageiros que possuem algum tipo de preferência pela lei';

COMMENT ON COLUMN PassageiroPreferencial.id IS 'Identificador de passageiro';

COMMENT ON COLUMN PassageiroPreferencial.tipo IS 'Tipo de preferência do passageiro';

COMMENT ON TABLE PassageiroEstudante IS 'Passageiro que está matriculado em instituição de ensino';

COMMENT ON COLUMN PassageiroEstudante.id IS 'Identificador de passageiro';

COMMENT ON COLUMN PassageiroEstudante.desconto IS 'Desconto obtido com o benefício de estudante';

COMMENT ON COLUMN PassageiroEstudante.periodo IS 'Período em que o passageiro pode usar o benefício';

COMMENT ON COLUMN PassageiroEstudante.instituicao IS 'Nome da instituição em que o passageiro está matriculado';

COMMENT ON TABLE Endereco IS 'Endereço de pessoas ou pontos';

COMMENT ON COLUMN Endereco.id IS 'Identificador de endereço';

COMMENT ON COLUMN Endereco.rua IS 'Nome da rua';

COMMENT ON COLUMN Endereco.cidade IS 'Nome da cidade';

COMMENT ON COLUMN Endereco.bairro IS 'Nome do bairro';

COMMENT ON COLUMN Endereco.numero IS 'Número do endereço';

COMMENT ON TABLE Pessoa IS 'Entidade de identificação de uma pessoa';

COMMENT ON COLUMN Pessoa.id IS 'Identificador de pessoa';

COMMENT ON COLUMN Pessoa.nome IS 'Nome da pessoa';

COMMENT ON COLUMN Pessoa.telefone IS 'String com o Telefone da pessoa, restrito à apenas um telefone por pessoa';

COMMENT ON COLUMN Pessoa.rg IS 'String com o RG da pessoa';

COMMENT ON COLUMN Pessoa.cpf IS 'String com o CPF da pessoa';

COMMENT ON TABLE Funcionario IS 'Funcionário que trabalha para a empresa de transporte';

COMMENT ON COLUMN Funcionario.id IS 'Identificador de funcionario';

COMMENT ON COLUMN Funcionario.carga_horaria IS 'Carga horária de um funcionário da empresa';

COMMENT ON TABLE FuncionarioMotorista IS 'Motoristas que trabalham na empresa de transporte';

COMMENT ON COLUMN FuncionarioMotorista.id IS 'Identificador de funcionário';

COMMENT ON COLUMN FuncionarioMotorista.cnh IS 'String com a CNH do motorista';

COMMENT ON TABLE FuncionarioCobrador IS 'Cobradores que trabalham na empresa de transporte';

COMMENT ON COLUMN FuncionarioCobrador.id IS 'Identificador de funcionário';

COMMENT ON COLUMN FuncionarioCobrador.tipo IS 'Tipo de cobrador, se é fixo em um ponto ou fica no ônibus';

COMMENT ON TABLE FuncionarioLimpeza IS 'Funcionários de Limpeza que trabalham na empresa de transporte';

COMMENT ON COLUMN FuncionarioLimpeza.id IS 'Identificador de funcionário';

COMMENT ON COLUMN FuncionarioLimpeza.empresa IS 'Empresa terceirizada pelo qual funcionários de limpeza trabalham';

COMMENT ON COLUMN FuncionarioLimpeza.tipo IS 'Tipo de limpeza, no ônibus ou no terminal';

COMMENT ON COLUMN RotaLocalizacaoInicial.id_rota IS 'Identificador de rota';

COMMENT ON COLUMN RotaLocalizacaoInicial.id_localizacao IS 'Identificador de localização';

COMMENT ON COLUMN RotaLocalizacaoFinal.id_rota IS 'Identificador de rota';

COMMENT ON COLUMN RotaLocalizacaoFinal.id_localizacao IS 'Identificador de localização';

COMMENT ON COLUMN LocalizacaoPonto.id_localizacao IS 'Identificador de localização';

COMMENT ON COLUMN LocalizacaoPonto.id_ponto IS 'Identificador de ponto';

COMMENT ON COLUMN LocalizacaoOnibus.id_localizacao IS 'Identificador de localização';

COMMENT ON COLUMN LocalizacaoOnibus.id_onibus IS 'Identificador de ônibus';

COMMENT ON COLUMN OnibusPassageiro.id_onibus IS 'Identificador de ônibus';

COMMENT ON COLUMN OnibusPassageiro.id_passageiro IS 'Identificador de passageiro';

COMMENT ON COLUMN PassageiroPessoa.id_passageiro IS 'Identificador de passageiro';

COMMENT ON COLUMN PassageiroPessoa.id_pessoa IS 'Identificador de pessoa';

COMMENT ON COLUMN MotoristaOnibus.id_motorista IS 'Identificador de motorista';

COMMENT ON COLUMN MotoristaOnibus.id_onibus IS 'Identificador de ônibus';

COMMENT ON COLUMN PontoOnibus.id_ponto IS 'Identificador de ponto';

COMMENT ON COLUMN PontoOnibus.id_onibus IS 'Identificador de ônibus';

COMMENT ON COLUMN PontoEndereco.id_ponto IS 'Identificador de ponto';

COMMENT ON COLUMN PontoEndereco.id_endereco IS 'Identificador de endereço';

COMMENT ON COLUMN RotaPonto.id_rota IS 'Identificador de rota';

COMMENT ON COLUMN RotaPonto.id_ponto IS 'Identificador do ponto';

COMMENT ON COLUMN CobradorOnibus.id_cobrador IS 'Identificador de cobrador';

COMMENT ON COLUMN CobradorOnibus.id_onibus IS 'Identificador de ônibus';

COMMENT ON COLUMN CobradorPonto.id_cobrador IS 'Identificador de cobrador';

COMMENT ON COLUMN CobradorPonto.id_ponto IS 'Identificador de ponto';

COMMENT ON COLUMN FuncionarioEndereco.id_funcionario IS 'Identificador de funcionário';

COMMENT ON COLUMN FuncionarioEndereco.id_endereco IS 'Identificador de endereço';

COMMENT ON COLUMN FuncionarioPessoa.id_funcionario IS 'Identificador de funcionário';

COMMENT ON COLUMN FuncionarioPessoa.id_pessoa IS 'Identificador de pessoa';
