CREATE TABLE agenzia (
	nome VARCHAR(20),
	indirizzo VARCHAR(20),
	telefono INT
);

CREATE TABLE casa (
	indirizzo VARCHAR(20),
	nr_interno VARCHAR(20),
	cod_proprietario VARCHAR(20),
	FOREIGN KEY (cod_proprietario) REFERENCES proprietario(codice)
);

CREATE TABLE inserzioni (
	codice VARCHAR(20),
	indirizzo_casa VARCHAR(20),
	interno_casa VARCHAR(20),
	nome_agenzia VARCHAR(20),
	FOREIGN KEY (indirizzo_casa) REFERENCES casa(indirizzo),
	FOREIGN KEY (interno_casa) REFERENCES casa(nr_interno),
	FOREIGN KEY (nome_agenzia) REFERENCES agenzia(nome),
	data_inserzione DATE
);

CREATE TABLE proprietario (
	codice VARCHAR(20),
	nome VARCHAR(20),
	cognome VARCHAR(20),
	telefono INT
);



