Nel modello precedente una tratta è stata descritta unicamente tramite stazione di
partenza e stazione di arrivo. Si vuole ora estendere la base di dati per rappresentare
tratte composte da più fermate intermedie.
Ogni tratta può essere composta da più fermate, ciascuna associata a una stazione.
Le stazioni sono identificate da un codice univoco e caratterizzate da nome e città.
Per ogni fermata si vuole memorizzare:
• la stazione;
• l’ordine progressivo lungo la tratta.
Si richiede di modificare il modello relazionale introducendo le nuove strutture
necessarie, mantenendo la coerenza con le entità già definite (Treno, Tratta, Corsa).

CREATE TABLE stazione (
    id VARCHAR(10),
    nome VARCHAR(33),
    citta VARCHAR(33)
);
