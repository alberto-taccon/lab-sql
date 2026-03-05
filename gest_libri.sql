CREATE TABLE libro(
    id_libro INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    isbn INT(13) NOT NULL,
    tipologia VARCHAR(30) NOT NULL,
    casa_editrice VARCHAR(30) NOT NULL,
    FOREIGN KEY (casa_editrice) REFERENCES case_editrice(nome_casa_editrice),
    numero_edizione INT NOT NULL,
    prezzo FLOAT NOT NULL,
    anno YEAR
);

CREATE TABLE autore(
    id_autore INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    cognome VARCHAR(30) NOT NULL,
    data_nascita DATE,
    sesso CHAR(1),
    nazionalita VARCHAR(30)
);

CREATE TABLE casa_editrice(
    id_casa_editrice INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome_casa_editrice VARCHAR(30) NOT NULL,
    nazione VARCHAR(30) NOT NULL,
    anno_fondazione YEAR,
    pubblica BOOLEAN
  );
