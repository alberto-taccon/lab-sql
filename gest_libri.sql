CREATE TABLE libro(
    id_libro INT PRIMARY KEY AUTO_INCREMENT,
    isbn VARCHAR(13) NOT NULL,
    tipologia VARCHAR(30) NOT NULL,
    id_casa_editrice INT NOT NULL,
    numero_edizione INT NOT NULL,
    prezzo FLOAT NOT NULL,
    anno YEAR,
    FOREIGN KEY (id_autore) REFERENCES autore(id_autore),
    FOREIGN KEY (id_casa_editrice) REFERENCES casa_editrice(id_casa_editrice)
);

CREATE TABLE autore(
    id_autore INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    cognome VARCHAR(30) NOT NULL,
    data_nascita DATE,
    sesso CHAR(1),
    nazionalita VARCHAR(30)
);

CREATE TABLE casa_editrice(
    id_casa_editrice INT PRIMARY KEY AUTO_INCREMENT,
    nome_casa_editrice VARCHAR(30) NOT NULL,
    nazione VARCHAR(30) NOT NULL,
    anno_fondazione YEAR,
    pubblica BOOLEAN
  );

CREATE TABLE libro_autore(
    id_libro INT PRIMARY KEY,
    id_autore INT PRIMARY KEY,
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro),
    FOREIGN KEY (id_autore) REFERENCES autore(id_autore)
);
