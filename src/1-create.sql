-- ====================================== TABLES ======================================
CREATE TYPE Onibus_status AS ENUM (
  'operante',
  'inativo',
  'manutencao'
);

CREATE TYPE PassageiroPreferencial_tipo AS ENUM (
  'idoso',
  'gestante',
  'deficiente'
);

CREATE TYPE PassageiroEstudante_periodo AS ENUM (
  'matutino',
  'vespertino',
  'noturno',
  'integral'
);

CREATE TYPE FuncionarioCobrador_tipo AS ENUM (
  'ponto',
  'onibus'
);

CREATE TYPE FuncionarioLimpeza_tipo AS ENUM (
  'ponto',
  'onibus'
);

CREATE TABLE Localizacao (
  id SERIAL UNIQUE PRIMARY KEY NOT NULL,
  latitude text NOT NULL,
  longitude text NOT NULL
);

CREATE TABLE Rota (
  id SERIAL UNIQUE PRIMARY KEY NOT NULL,
  nome text
);

CREATE TABLE Onibus (
  id SERIAL UNIQUE PRIMARY KEY NOT NULL,
  marca text,
  modelo text,
  status Onibus_status
);

CREATE TABLE Ponto (
  id SERIAL UNIQUE PRIMARY KEY NOT NULL,
  nome text,
  caixa float
);

CREATE TABLE Passageiro (
  id SERIAL UNIQUE PRIMARY KEY NOT NULL,
  saldo float
);

CREATE TABLE PassageiroPreferencial (
  id int,
  tipo PassageiroPreferencial_tipo NOT NULL
);

CREATE TABLE PassageiroEstudante (
  id int,
  desconto float,
  periodo PassageiroEstudante_periodo,
  instituicao text
);

CREATE TABLE Endereco (
  id SERIAL UNIQUE PRIMARY KEY NOT NULL,
  rua text,
  cidade text,
  bairro text,
  numero int
);

CREATE TABLE Pessoa (
  id SERIAL UNIQUE PRIMARY KEY NOT NULL,
  nome text,
  telefone varchar UNIQUE,
  rg text UNIQUE NOT NULL,
  cpf text UNIQUE NOT NULL
);

CREATE TABLE Funcionario (
  id SERIAL UNIQUE PRIMARY KEY NOT NULL,
  carga_horaria int NOT NULL
);

CREATE TABLE FuncionarioMotorista (
  id int UNIQUE PRIMARY KEY,
  cnh text UNIQUE NOT NULL
);

CREATE TABLE FuncionarioCobrador (
  id int UNIQUE PRIMARY KEY,
  tipo FuncionarioCobrador_tipo
);

CREATE TABLE FuncionarioLimpeza (
  id int UNIQUE PRIMARY KEY,
  empresa text NOT NULL,
  tipo FuncionarioLimpeza_tipo
);

CREATE TABLE RotaLocalizacaoInicial (
  id_rota int,
  id_localizacao int
);

CREATE TABLE RotaLocalizacaoFinal (
  id_rota int,
  id_localizacao int
);

CREATE TABLE LocalizacaoPonto (
  id_localizacao int,
  id_ponto int
);

CREATE TABLE LocalizacaoOnibus (
  id_localizacao int,
  id_onibus int
);

CREATE TABLE OnibusPassageiro (
  id_onibus int,
  id_passageiro int
);

CREATE TABLE PassageiroPessoa (
  id_passageiro int,
  id_pessoa int
);

CREATE TABLE MotoristaOnibus (
  id_motorista int,
  id_onibus int
);

CREATE TABLE PontoOnibus (
  id_ponto int,
  id_onibus int
);

CREATE TABLE PontoEndereco (
  id_ponto int,
  id_endereco int
);

CREATE TABLE RotaPonto (
  id_rota int,
  id_ponto int
);

CREATE TABLE CobradorOnibus (
  id_cobrador int,
  id_onibus int
);

CREATE TABLE CobradorPonto (
  id_cobrador int,
  id_ponto int
);

CREATE TABLE FuncionarioEndereco (
  id_funcionario int,
  id_endereco int
);

CREATE TABLE FuncionarioPessoa (
  id_funcionario int,
  id_pessoa int
);

ALTER TABLE PassageiroPreferencial ADD FOREIGN KEY (id) REFERENCES Passageiro (id);

ALTER TABLE PassageiroEstudante ADD FOREIGN KEY (id) REFERENCES Passageiro (id);

ALTER TABLE FuncionarioMotorista ADD FOREIGN KEY (id) REFERENCES Funcionario (id);

ALTER TABLE FuncionarioCobrador ADD FOREIGN KEY (id) REFERENCES Funcionario (id);

ALTER TABLE FuncionarioLimpeza ADD FOREIGN KEY (id) REFERENCES Funcionario (id);

ALTER TABLE RotaLocalizacaoInicial ADD FOREIGN KEY (id_rota) REFERENCES Rota (id);

ALTER TABLE RotaLocalizacaoInicial ADD FOREIGN KEY (id_localizacao) REFERENCES Localizacao (id);

ALTER TABLE RotaLocalizacaoFinal ADD FOREIGN KEY (id_rota) REFERENCES Rota (id);

ALTER TABLE RotaLocalizacaoFinal ADD FOREIGN KEY (id_localizacao) REFERENCES Localizacao (id);

ALTER TABLE LocalizacaoPonto ADD FOREIGN KEY (id_localizacao) REFERENCES Localizacao (id);

ALTER TABLE LocalizacaoPonto ADD FOREIGN KEY (id_ponto) REFERENCES Ponto (id);

ALTER TABLE LocalizacaoOnibus ADD FOREIGN KEY (id_localizacao) REFERENCES Localizacao (id);

ALTER TABLE LocalizacaoOnibus ADD FOREIGN KEY (id_onibus) REFERENCES Onibus (id);

ALTER TABLE OnibusPassageiro ADD FOREIGN KEY (id_onibus) REFERENCES Onibus (id);

ALTER TABLE OnibusPassageiro ADD FOREIGN KEY (id_passageiro) REFERENCES Passageiro (id);

ALTER TABLE PassageiroPessoa ADD FOREIGN KEY (id_passageiro) REFERENCES Passageiro (id);

ALTER TABLE PassageiroPessoa ADD FOREIGN KEY (id_pessoa) REFERENCES Pessoa (id);

ALTER TABLE MotoristaOnibus ADD FOREIGN KEY (id_motorista) REFERENCES FuncionarioMotorista (id);

ALTER TABLE MotoristaOnibus ADD FOREIGN KEY (id_onibus) REFERENCES Onibus (id);

ALTER TABLE PontoOnibus ADD FOREIGN KEY (id_ponto) REFERENCES Ponto (id);

ALTER TABLE PontoOnibus ADD FOREIGN KEY (id_onibus) REFERENCES Onibus (id);

ALTER TABLE PontoEndereco ADD FOREIGN KEY (id_ponto) REFERENCES Ponto (id);

ALTER TABLE PontoEndereco ADD FOREIGN KEY (id_endereco) REFERENCES Endereco (id);

ALTER TABLE RotaPonto ADD FOREIGN KEY (id_rota) REFERENCES Rota (id);

ALTER TABLE RotaPonto ADD FOREIGN KEY (id_ponto) REFERENCES Ponto (id);

ALTER TABLE CobradorOnibus ADD FOREIGN KEY (id_cobrador) REFERENCES FuncionarioCobrador (id);

ALTER TABLE CobradorOnibus ADD FOREIGN KEY (id_onibus) REFERENCES Onibus (id);

ALTER TABLE CobradorPonto ADD FOREIGN KEY (id_cobrador) REFERENCES FuncionarioCobrador (id);

ALTER TABLE CobradorPonto ADD FOREIGN KEY (id_ponto) REFERENCES Ponto (id);

ALTER TABLE FuncionarioEndereco ADD FOREIGN KEY (id_funcionario) REFERENCES Funcionario (id);

ALTER TABLE FuncionarioEndereco ADD FOREIGN KEY (id_endereco) REFERENCES Endereco (id);

ALTER TABLE FuncionarioPessoa ADD FOREIGN KEY (id_funcionario) REFERENCES Funcionario (id);

ALTER TABLE FuncionarioPessoa ADD FOREIGN KEY (id_pessoa) REFERENCES Pessoa (id);
