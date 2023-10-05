DROP DATABASE SerieAShop;
CREATE DATABASE IF NOT EXISTS SerieAShop;
USE SerieAShop;
CREATE TABLE Squadra (
                         idSquadra (25) NOT NULL,
                         pathLogo VARCHAR(60) NULL,
                         PRIMARY KEY (idSquadra));

CREATE TABLE Adminc (
                        Username VARCHAR(25) NOT  	NULL,
                        password VARCHAR(45) NULL,
                        nome VARCHAR(45) NULL,
                        cognome VARCHAR(45) NULL,
                        dataDiNascita DATE NULL,
                        PRIMARY KEY (Username));

CREATE TABLE Utente (
                        Username VARCHAR(25) NOT NULL,
                        Nome VARCHAR(45) NULL,
                        Cognome VARCHAR(45) NULL,
                        Data_Nascita DATE NULL,
                        Email VARCHAR(45) NULL,
                        Password VARCHAR(45) NULL,
                        PRIMARY KEY (Username));

CREATE TABLE Carrello (
                          idCarrello INT NOT NULL,
                          username VARCHAR(25),
                          PRIMARY KEY (idCarrello),
                          FOREIGN KEY(username) REFERENCES Utente(Username)
);

CREATE TABLE Prodotto (
                          idProdotto INT NOT NULL,
                          Descrizione VARCHAR(45) NULL,
                          NomeProdotto VARCHAR(45) NULL,
                          Quantita INT NULL,
                          Prezzo VARCHAR(45) NULL,
                          idSquadra VARCHAR(25),
                          PRIMARY KEY (idProdotto),
                          FOREIGN KEY(idSquadra) REFERENCES Squadra(idSquadra));

CREATE TABLE Composto (
                          id INT NOT NULL,
                          idProdotto INT,
                          idCarrello INT,
                          PRIMARY KEY (id),
                          FOREIGN KEY(idProdotto) REFERENCES Prodotto(idProdotto),
                          FOREIGN KEY(idCarrello) REFERENCES Carrello(idCarrello)
);

CREATE TABLE Ordine (
                        idOrdine INT NOT NULL,
                        PrezzoTotale DOUBLE NULL,
                        metodoDiPagamento VARCHAR(45) NULL,
                        via VARCHAR(45) NULL,
                        civico VARCHAR(45) NULL,
                        CAP VARCHAR(45) NULL,
                        nomeDestinatario VARCHAR(45) NULL,
                        PRIMARY KEY (idOrdine));

CREATE TABLE Genera (
                        id INT NOT NULL,
                        PRIMARY KEY (id),
                        username varchar(25),
                        idOrdine INT,
                        FOREIGN KEY(username) REFERENCES Utente(Username),
                        FOREIGN KEY(idOrdine) REFERENCES Ordine(idOrdine));

-- Popolamento della tabella Squadra con almeno 10 occorrenze
INSERT INTO Squadra (idSquadra, pathLogo)
VALUES
    ("Atalanta", "/image/stemmi/atalanta.png"),
    ("Bologna", "/image/stemmi/bologna.png"),
    ("Cagliari", "/image/stemmi/cagliari.png"),
    ("Empoli", "/image/stemmi/empoli.png"),
    ("Fiorentina", "/image/stemmi/fiorentina.png"),
    ("Frosinone", "/image/stemmi/frosinone.png"),
    ("Genoa", "/image/stemmi/genoa.png"),
    ("Inter", "/image/stemmi/inter.png"),
    ("Juventus", "/image/stemmi/juventus.png"),
    ("Lazio", "/image/stemmi/lazio.png"),
    ("Lecce", "/image/stemmi/lecce.png"),
    ("Milan", "/image/stemmi/milan.png"),
    ("Monza", "/image/stemmi/monza.png"),
    ("Napoli", "/image/stemmi/napoli.png"),
    ("Roma", "/image/stemmi/roma.png"),
    ("Salernitana", "/image/stemmi/salernitana.png"),
    ("Sassuolo", "/image/stemmi/sassuolo.png"),
    ("Torino", "/image/stemmi/torino.png"),
    ("Udinese", "/image/stemmi/udinese.png"),
    ("Verona", "/image/stemmi/verona.png")
;