-- create a table
CREATE TABLE AEROPORTO (
    Citta TEXT (30) NOT NULL,
    Nazione TEXT (60) NOT NULL,
    NumPiste INTEGER NULL
);


INSERT INTO AEROPORTO (Citta,Nazione,NumPiste) VALUES 
    ('Milano','Italia',50),
    ('Bologna','Italia',26),
    ('Roma','Italia',61),
    ('Catania','Italia',20),
    ('Palermo','Italia',NULL),
    ('Genova','Italia',35),
    ('Torino','Italia',16),
    ('Londra','Inghilterra',69),
    ('Parigi','Francia',58),
    ('Atene','Grecia',48);



CREATE TABLE VOLO (
    IdVolo VARCHAR(60),
    GiornoSett VARCHAR(50),
    CittaPart TEXT(40),
    OraPart TIME,
    CittaArr TEXT(30),
    OraArr TIME,
    TipoAereo VARCHAR(80)
);


INSERT INTO VOLO (IdVolo, GiornoSett, CittaPart, OraPart, CittaArr, OraArr, TipoAereo) VALUES 
    ('AZ274', 'Lunedi', 'Milano', '08:35:00', 'Roma', '09:30:00', 'BOING737'),
    ('FR596', 'Martedi', 'Catania', '10:30:05', 'Bologna', '12:30:08', 'AIRBUS320'),
    ('U2465', 'Mercoledi', 'Palermo', '15:30:08', 'Torino', '18:00:05', 'BOING737'),
    ('LH523', 'Giovedi', 'Genova', '16:35:09', 'Atene', '18:15:10', 'AIRBUS320'),
    ('AF195', 'Venerdi', 'Londra', '13:00:40', 'Parigi', '15:40:50', 'BOING737'),
    ('BA589', 'Sabato', 'Atene', '08:30:45', 'Roma', '11:15:20', 'BOING737'),
    ('IB523', 'Domenica', 'Torino', '14:36:32', 'Londra', '16:50:42', 'MD80'),
    ('KL321', 'Lunedi', 'Genova', '19:45:17', 'Catania', '20:40:23', 'BOING737'),
    ('AR896', 'Martedi', 'Roma', '21:40:12', 'Londra',' 23:00:23', 'MD80'),
    ('BK789', 'Mercoledi', 'Parigi', '06:50:09', 'Roma', '09:30:10', 'BOING737');


CREATE TABLE AEREO (
    TipoAereo TEXT NOT NULL,
    NumPasseggeri INTEGER NOT NULL,
    QtaMerci INTEGER 
);

INSERT INTO AEREO (TipoAereo,NumPasseggeri,QtaMerci) VALUES
    ('BOING737',49,800),
    ('MD80',89,1050),
    ('AIRBUS320',60,400),
    ('BOING737',10,200),
    ('MD80',95,5630),
    ('BOING737',59,500),
    ('BOING737',13,89),
    ('AIRBUS320',47,90),
    ('BOING737',78,160),
    ('MD80',34,500
    );



SELECT Citta FROM AEROPORTO WHERE NumPiste IS NULL;

SELECT TipoAereo FROM VOLO WHERE CittaPart = 'Torino';

SELECT CittaPart FROM VOLO WHERE CittaArr= 'Bologna';

SELECT CittaPart, CittaArr FROM VOLO WHERE IdVolo= 'AZ274';
















    