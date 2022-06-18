DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE IF NOT EXISTS SpotifyClone.plano (
	plano_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    plano VARCHAR(30) NOT NULL,
    valor DOUBLE NOT NULL
);

CREATE TABLE IF NOT EXISTS SpotifyClone.artista (
	artista_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS SpotifyClone.usuario (
	usuario_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    idade VARCHAR(30) NOT NULL,
    plano_id INT NOT NULL,
    data_assinatura DATE NOT NULL,
    FOREIGN KEY(plano_id) REFERENCES plano(plano_id)
);

CREATE TABLE IF NOT EXISTS SpotifyClone.album (
	album_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    album VARCHAR(80) NOT NULL,
    artista_id INT NOT NULL,
    ano_lancamento INT NOT NULL,
    FOREIGN KEY(artista_id) REFERENCES artista(artista_id)
);

CREATE TABLE IF NOT EXISTS SpotifyClone.cancao (
	cancao_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(80) NOT NULL,
    album_id INT NOT NULL,
    duracao_segundos INT NOT NULL,
    FOREIGN KEY(album_id) REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS SpotifyClone.artista_favorito (
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY(usuario_id, artista_id),
    FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY(artista_id) REFERENCES artista(artista_id)
);

CREATE TABLE IF NOT EXISTS SpotifyClone.lista_reproducao (
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    data_reproducao VARCHAR(30) NOT NULL,
    PRIMARY KEY (usuario_id, cancao_id),
    FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY(cancao_id) REFERENCES cancao(cancao_id)
);

INSERT INTO SpotifyClone.plano VALUES
	(DEFAULT, 'gratuito', 0),
    (DEFAULT, 'pessoal', 6.99),
    (DEFAULT, 'universitário', 5.99),
    (DEFAULT, 'familiar', 7.99);

INSERT INTO SpotifyClone.usuario VALUES
	(DEFAULT, 'Thati', 23, 1, DATE('2019-10-20')),
    (DEFAULT, 'Cintia', 35, 4, DATE('2017-12-30')),
    (DEFAULT, 'Bill', 20, 3, DATE('2019-06-05')),
    (DEFAULT, 'Roger', 45, 2, DATE('2020-05-13')),
    (DEFAULT, 'Norman', 58, 2, DATE('2017-02-17')),
    (DEFAULT, 'Patrick', 33, 4, DATE('2017-01-06')),
    (DEFAULT, 'Vivian', 26, 3, DATE('2018-01-05')),
    (DEFAULT, 'Carol', 19, 3, DATE('2018-02-14')),
    (DEFAULT, 'Angelina', 42, 4, DATE('2018-04-29')),
    (DEFAULT, 'Paul', 46, 4, DATE('2017-01-17'));

INSERT INTO SpotifyClone.artista VALUES
	(DEFAULT, 'Walter Phoenix'),
    (DEFAULT, 'Freedie Shannon'),
    (DEFAULT, 'Lance Day'),
    (DEFAULT, 'Tyler Isle'),
    (DEFAULT, 'Peter Strong'),
    (DEFAULT, 'Fog');

INSERT INTO SpotifyClone.album VALUES
	(DEFAULT, 'Envious', 1, 1990),
    (DEFAULT, 'Exuberant', 1, 1993),
    (DEFAULT, 'Hallowed Steam', 5, 1995),
    (DEFAULT, 'Incandescent', 3, 1998),
    (DEFAULT, 'Temporary Culture', 2, 2001),
    (DEFAULT, 'Library of liberty', 2, 2003),
    (DEFAULT, 'Chained Down', 4, 2007),
    (DEFAULT, 'Cabinet of fools', 4, 2012),
    (DEFAULT, 'No guarantees', 4, 2015),
    (DEFAULT, 'Apparatus', 6, 2015);

INSERT INTO SpotifyClone.cancao VALUES
	(DEFAULT, "Need Of The Evening", 6, 190),
	(DEFAULT, "Without My Streets", 5, 176),
	(DEFAULT, "You Cheated On Me", 10, 95),
    (DEFAULT, "I Know I Know", 8, 117),
	(DEFAULT, "She Thinks I Won't Stay Tonight", 8, 166),
    (DEFAULT, "Fantasy For Me", 4, 100),
	(DEFAULT, "Honey", 10, 79),
	(DEFAULT, "Walking And Man", 7, 229),
	(DEFAULT, "Young And Father", 6, 197),
    (DEFAULT, "Diamond Power", 4, 241),
    (DEFAULT, "Let's Be Silly", 4, 132),
    (DEFAULT, "I Heard I Want To Bo Alone", 9, 120),
    (DEFAULT, "Finding My Traditions", 7, 179),
    (DEFAULT, "Without My Love", 6, 111),
    (DEFAULT, "Baby", 10, 136),
    (DEFAULT, "Magic Circus", 3, 105),
    (DEFAULT, "Dance With Her Own", 1, 116),
    (DEFAULT, "Hard And Time", 7, 135),
    (DEFAULT, "Reflections Of Magic", 1, 163),
    (DEFAULT, "I Ride Alone", 9, 151),
    (DEFAULT, "Honey, I'm A Lone Wolf", 7, 150),
    (DEFAULT, "Honey, So Do I", 3, 207),
    (DEFAULT, "Rock His Everything", 4, 223),
    (DEFAULT, "Soul For Us", 1, 200),
    (DEFAULT, "Wouldn't It Be Nice", 10, 213),
    (DEFAULT, "He Heard You're Bad For Me", 8, 154),
    (DEFAULT, "He Hopes We Can't Stay", 8, 210),
    (DEFAULT, "Walking And Game", 6, 123),
    (DEFAULT, "Time Fireworks", 2, 152),
    (DEFAULT, "Troubles Of My Inner Fire", 2, 203),
    (DEFAULT, "Celebration Of More", 4, 146),
    (DEFAULT, "You Make Me Feel So..", 10, 83),
    (DEFAULT, "He's Walking Away", 9, 159),
    (DEFAULT, "He's Trouble", 9, 138),
    (DEFAULT, "Thang Of Thunder", 5, 240),
    (DEFAULT, "Words Of Her Life", 5, 185),
    (DEFAULT, "Sweetie, Let's Go Wild", 3, 139),
    (DEFAULT, "She Knows", 3, 244),
    (DEFAULT, "History Of My Roses", 6, 222),
    (DEFAULT, "Home Forever", 4, 231);

INSERT INTO SpotifyClone.lista_reproducao VALUES
	(1, 7, "2020-02-28 10:45:55"),
    (1, 8, "2020-05-02 05:30:35"),
    (1, 9, "2020-03-06 11:22:33"),
    (1, 10, "2020-08-05 08:05:17"),
    (1, 11, "2020-09-14 16:32:22"),
    (2, 12, "2020-01-02 07:40:33"),
    (2, 13, "2020-05-16 06:16:22"),
    (2, 14, "2020-10-09 12:27:48"),
    (2, 15, "2020-09-21 13:14:46"),
    (3, 16, "2020-11-13 16:55:13"),
    (3, 17, "2020-12-05 18:38:30"),
    (3, 18, "2020-07-30 10:00:00"),
    (4, 19, "2021-08-15 17:10:10"),
    (4, 20, "2021-07-10 15:20:30"),
    (4, 21, "2021-07-10 15:20:30"),
    (5, 22, "2020-07-03 19:33:28"),
    (5, 23, "2017-02-24 21:14:22"),
    (5, 10, "2020-08-06 15:23:43"),
    (5, 24, "2020-11-10 13:52:27"),
    (6, 25, "2019-02-07 20:33:48"),
    (6, 26, "2017-01-24 00:31:17"),
    (6, 27, "2017-10-12 12:35:20"),
    (6, 28, "2018-05-29 14:56:41"),
    (7, 29, "2018-05-09 22:30:49"),
    (7, 30, "2020-07-27 12:52:58"),
    (7, 31, "2018-01-16 18:40:43"),
    (8, 15, "2018-03-21 16:56:40"),
    (8, 32, "2020-10-18 13:38:05"),
    (8, 33, "2019-05-25 08:14:03"),
    (8, 34, "2021-08-15 21:37:09"),
    (9, 35, "2021-05-24 17:23:45"),
    (9, 36, "2018-12-07 22:48:52"),
    (9, 37, "2021-03-14 06:14:26"),
    (9, 38, "2020-04-01 03:36:00"),
    (10, 39, "2017-02-06 08:21:34"),
    (10, 14, "2017-12-04 05:33:43"),
    (10, 23, "2017-07-27 05:24:49"),
    (10, 40, "2017-12-25 01:03:57");

INSERT INTO SpotifyClone.artista_favorito VALUES
	(1, 1),
    (1, 2),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 5),
    (3, 1),
    (4, 2),
    (5, 4),
    (5, 6),
    (6, 6),
    (6, 3),
    (6, 1),
    (7, 5),
    (7, 4),
    (8, 1),
    (8, 4),
    (9, 6),
    (9, 2),
    (9, 3),
    (10, 5),
    (10, 6);
