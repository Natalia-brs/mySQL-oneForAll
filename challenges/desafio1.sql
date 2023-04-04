CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE planos(
id INT PRIMARY KEY AUTO_INCREMENT,
tipo_plano VARCHAR(35) NOT NULL,
valor DOUBLE NOT NULL 
)ENGINE=InnoDB;

INSERT INTO planos(tipo_plano, valor) VALUES
('gratuito', 0.00), ('familiar', 7.99), ('universitário', 5.99), ('pessoal', 6.99);

SELECT * FROM planos;

CREATE TABLE usuario(
id_usuario INT PRIMARY KEY AUTO_INCREMENT,
nome_usuario VARCHAR(35) NOT NULL,
idade INT NOT NULL,
data_assinatura DATE,
plano_id INT NOT NULL,
FOREIGN KEY(plano_id) REFERENCES planos(id)
)ENGINE=InnoDB;

INSERT INTO usuario(nome_usuario, idade, data_assinatura, plano_id) VALUES
("Barbara Liskov", 82, "2019-10-20", 1),
("Robert Cecil Martin", 58, "2017-01-06", 1),
("Ada Lovelace", 37, "2017-12-30", 2),
("Martin Fowler", 46, "2017-01-17", 2),
("Sandi Metz", 58, "2018-04-29", 2),
("Paulo Freire", 19, "2018-02-14", 3),
("Bell Hooks", 26, "2018-01-05", 3),
("Christopher Alexander", 85, "2019-06-05", 4),
("Judith Butler", 45, "2020-05-13", 4),
("Jorge Amado", 58, "2017-02-17", 4);

CREATE TABLE artista(
id_artista INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL
)ENGINE=InnoDB;

INSERT INTO artista(nome) VALUES 
("Beyoncé"),
("Queen"),
("Elis Regina"),
("Baco Exu do Blues"),
("Blind Guardian"),
("Nina Simone");

SELECT * FROM artista;

DROP TABLE album;
CREATE TABLE album(
id_album INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(35) NOT NULL,
ano_lançamento YEAR NOT NULL,
id_artista INT NOT NULL,
FOREIGN KEY(id_artista) REFERENCES artista(id_artista)
)ENGINE=InnoDB;

INSERT INTO album(titulo, ano_lançamento, id_artista) VALUES 
('Renaissance', 2022, 1),
('Jazz', 1978, 2),
('Hot Space', 1982, 2),
('Falso Brilhante', 1998, 3),
('Vento de Maio', 2001, 3),
('QVVJFA?', 2003, 4),
('Somewhere Far Beyond', 2007, 5),
('I Put A Spell On You', 2012, 6);

SELECT * FROM album;

CREATE TABLE musica(
musica_id INT PRIMARY KEY AUTO_INCREMENT,
titulo VARCHAR(50) NOT NULL,
album_id INT NOT NULL,
duração_seg INT NOT NULL,
artista_id INT NOT NULL,
FOREIGN KEY(album_id) REFERENCES album(id_album),
FOREIGN KEY(artista_id) REFERENCES artista(id_artista)
)ENGINE=InnoDB;

INSERT INTO musica (titulo, duração_seg, album_id, artista_id) VALUES 
('BREAK MY SOUL', 279, 1, 1),
("VIRGO'S GROOVE", 369, 1, 1),
('ALIEN SUPERSTAR', 116, 1, 1),
("Don't Stop Me Now", 203, 2, 2),
("Under Pressure", 152, 3, 2),
("Como Nossos Pais", 105, 4, 3),
("O Medo de Amar é o Medo de Ser Livre", 207, 5, 3),
("Samba em Paris", 267, 6, 4),
("The Bard's Song", 244, 7, 5),
("Feeling Good", 100, 8, 6);

SELECT * FROM musica;

CREATE TABLE seguidores(
artista_id INT NOT NULL,
usuario_id INT NOT NULL,
CONSTRAINT PRIMARY KEY(artista_id, usuario_id),
FOREIGN KEY (usuario_id) REFERENCES usuario(id_usuario),
FOREIGN KEY (artista_id) REFERENCES artista(id_artista)
)ENGINE=InnoDB;

INSERT INTO seguidores (artista_id, usuario_id) VALUES 
(1, 1),
(2, 1),
(3, 1),
(1, 2),
(3, 2),
(2, 3),
(4, 4),
(5, 5),
(6, 5),
(6, 6),
(1, 6),
(6, 7),
(3, 9),
(2, 10);

SELECT * FROM seguidores;

