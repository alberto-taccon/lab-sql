CREATE TABLE treno (
    id_treno VARCHAR(6) PRIMARY KEY NOT NULL, 
    tipologia VARCHAR(2) NOT NULL,
    max_posti INT NOT NULL,
    anno_costruzione YEAR
);

CREATE TABLE tratta (
    id_tratta INT PRIMARY KEY NOT NULL, 
    stazione_partenza VARCHAR(30) NOT NULL,
    stazione_arrivo VARCHAR(30) NOT NULL,
    distanza INT NOT NULL
);

CREATE TABLE corsa (
    id INT PRIMARY KEY NOT NULL, 
    id_treno VARCHAR(6) NOT NULL,
    id_tratta INT NOT NULL,
    FOREIGN KEY (id_treno) REFERENCES treno(id_treno),
    FOREIGN KEY (id_tratta) REFERENCES tratta(id_tratta),
    data DATE NOT NULL,
    ora_partenza TIME NOT NULL,
    ora_arrivo TIME NOT NULL
);
