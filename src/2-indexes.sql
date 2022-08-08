CREATE INDEX Localizacao_index ON Localizacao (latitude, longitude);

CREATE UNIQUE INDEX ON Localizacao (id);

CREATE UNIQUE INDEX ON Onibus (id);

CREATE UNIQUE INDEX ON Ponto (id);

CREATE INDEX RotaLocalizacaoInicial_index ON RotaLocalizacaoInicial (id_rota, id_localizacao);

CREATE INDEX RotaLocalizacaoFinal_index ON RotaLocalizacaoFinal (id_rota, id_localizacao);

CREATE INDEX Localizacao_Ponto_index ON LocalizacaoPonto (id_localizacao, id_ponto);

CREATE INDEX Localizacao_Onibus_index ON LocalizacaoOnibus (id_localizacao, id_onibus);

CREATE INDEX RotaPonto_index ON RotaPonto (id_rota, id_ponto);
