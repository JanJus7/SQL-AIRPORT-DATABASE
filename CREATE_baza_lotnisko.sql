CREATE DATABASE lotnisko

USE lotnisko;

CREATE TABLE lotniska (
id_lotniska INT PRIMARY KEY,
nazwa VARCHAR(255) NOT NULL,
miasto VARCHAR(255) NOT NULL,
kraj VARCHAR(255) NOT NULL,
kod_lotniska_ICAO VARCHAR(4) NOT NULL,
kod_lotniska_IATA VARCHAR(3) NOT NULL
);

CREATE TABLE linia_lotnicza (
id_linii INT PRIMARY KEY,
nazwa_linii VARCHAR(255),
siedziba VARCHAR(255),
kod_linii_ICAO VARCHAR(4),
kod_linii_IATA VARCHAR(3)
);



CREATE TABLE samoloty (
id_samolotu INT PRIMARY KEY,
model VARCHAR(255) NOT NULL,
numer_rejestracyjny VARCHAR(20),
id_linii INT NOT NULL,
FOREIGN KEY (id_linii) REFERENCES linia_lotnicza(id_linii)
);



CREATE TABLE loty (
id_lotu INT PRIMARY KEY,
data_operacji DATE NOT NULL,
czas_wylotu TIME NOT NULL,
czas_przylotu TIME NOT NULL,
id_lotniska_wylotu INT NOT NULL,
id_lotniska_przylotu INT NOT NULL,
id_samolotu INT NOT NULL,
FOREIGN KEY (id_lotniska_wylotu) REFERENCES lotniska(id_lotniska),
FOREIGN KEY (id_lotniska_przylotu) REFERENCES lotniska(id_lotniska),
FOREIGN KEY (id_samolotu) REFERENCES samoloty(id_samolotu)
);

CREATE TABLE karta_pok³adowa (
id_karty INT PRIMARY KEY,
numer_karty INT NOT NULL,
numer_miejsca VARCHAR(4) NOT NULL,
bramka VARCHAR(10) NOT NULL,
id_lotu INT NOT NULL,
FOREIGN KEY (id_lotu) REFERENCES loty(id_lotu)
);

CREATE TABLE pasa¿erowie (
id_pasazera INT PRIMARY KEY,
imie VARCHAR(255) NOT NULL,
nazwisko VARCHAR(255) NOT NULL,
id_lotu INT NOT NULL,
id_karty INT UNIQUE,
FOREIGN KEY (id_karty) REFERENCES karta_pok³adowa(id_karty),
FOREIGN KEY (id_lotu) REFERENCES loty(id_lotu)
);

CREATE TABLE za³oga (
id_zalogi INT PRIMARY KEY,
numer_zalogi INT NOT NULL,
ilosc_lotow INT NOT NULL,
id_lotu INT NOT NULL,
FOREIGN KEY (id_lotu) REFERENCES loty(id_lotu)
);

CREATE TABLE pracownicy (
id_pracownika INT PRIMARY KEY,
imie VARCHAR(255) NOT NULL,
nazwisko VARCHAR(255) NOT NULL,
funkcja VARCHAR(255) NOT NULL,
id_zalogi INT NOT NULL,
FOREIGN KEY (id_zalogi) REFERENCES za³oga(id_zalogi)
);

CREATE TABLE rezerwacje (
id_rezerwacji INT PRIMARY KEY,
data_rezerwacji DATE NOT NULL,
id_lotu INT NOT NULL,
id_pasazera INT NOT NULL,
FOREIGN KEY (id_lotu) REFERENCES loty(id_lotu),
FOREIGN KEY (id_pasazera) REFERENCES pasa¿erowie(id_pasazera)
);
