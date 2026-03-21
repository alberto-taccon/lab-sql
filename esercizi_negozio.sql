--1. Estrazione di tutti i dati relativi ai modelli dei prodotti a catalogo.
select * from 4CTL_modelli_prodotto;
--2. Visualizzazione di nome e prezzo di tutti i modelli a catalogo.
select nome, prezzo_listino from 4CTL_modelli_prodotto;
--3. Ricerca di tutti i modelli con prezzo di listino inferiore a 600€.
select * from 4CTL_modelli_prodotto where prezzo_listino<600.00;
--4. Selezione dei modelli che contengono la stringa ’Samsung’ nel nome.
select * from 4CTL_modelli_prodotto where nome like 'Samsung%'
--5. Elenco dei clienti il cui nome termina con la lettera ’a’.
select * from 4CTL_clienti where nome like '%a'
--6. Elenco dei modelli ordinati dal prezzo più elevato al più basso.
select * from 4CTL_modelli_prodotto order by prezzo_listino desc;
--7. Visualizzazione delle categorie di prodotti disponibili senza ripetizioni;
select distinct categoria from 4CTL_modelli_prodotto;
--8. Estrazione dei primi 10 prodotti arrivati in magazzino in ordine
cronologico.
select * from 4CTL_prodotti order by data_arrivo limit 10;
--9. Elenco dei clienti ordinati alfabeticamente per cognome e
successivamente per nome.
select * from 4CTL_clienti order by cognome, nome;
--10. Ricerca di tutti gli ordini effettuati nel mese di giugno 2024.
select * from 4CTL_ordini where data_ordine like '2024-06%'
--11. Elenco dei codici seriali in magazzino associati al nome del relativo
modello.
select cod_seriale, nome from 4CTL_prodotti, 4CTL_modelli_prodotto
--12. Ricostruzione dello scontrino: ID ordine, cognome cliente, nome
modello e seriale venduto.
--13. Visualizzazione dello stato della garanzia per ogni codice seriale
venduto.
--14 Conteggio dei pezzi fisici disponibili in magazzino per ogni categoria di
prodotto.
--15 Calcolo del totale incassato per ogni cliente basato sulla somma degli
ordini effettuati.
--16 Determinazione del prezzo medio di listino per ogni categoria di
prodotto a catalogo.
--17 Identificazione del numero di prodotti venduti per ogni tipologia di
garanzia (attiva, scaduta, in assistenza).
--18. Elenco dei clienti che hanno effettuato una spesa complessiva
superiore a 2000€.
--19. Identificazione delle categorie che hanno più di 50 prodotti registrati a
catalogo.
--20. Visualizzazione degli ordini il cui prezzo totale è superiore alla media di
tutti gli ordini.
--21. Elenco dei modelli che non sono mai stati venduti (assenti nella
tabella dettagli_ordine).
