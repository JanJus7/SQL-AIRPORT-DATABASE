USE lotnisko;

INSERT INTO lotniska (id_lotniska, nazwa, miasto, kraj, kod_lotniska_ICAO, kod_lotniska_IATA) VALUES (1, 'John F. Kennedy International Airport', 'New York', 'USA', 'KJFK', 'JFK');
INSERT INTO lotniska (id_lotniska, nazwa, miasto, kraj, kod_lotniska_ICAO, kod_lotniska_IATA) VALUES (2, 'Heathrow Airport', 'London', 'UK', 'EGLL', 'LHR');
INSERT INTO lotniska (id_lotniska, nazwa, miasto, kraj, kod_lotniska_ICAO, kod_lotniska_IATA) VALUES (3, 'Charles de Gaulle Airport', 'Paris', 'France', 'LFPG', 'CDG');
INSERT INTO lotniska (id_lotniska, nazwa, miasto, kraj, kod_lotniska_ICAO, kod_lotniska_IATA) VALUES (4, 'Lech Wa��sa Airport', 'Gda�sk', 'Poland', 'EPGD', 'GDN');
INSERT INTO lotniska (id_lotniska, nazwa, miasto, kraj, kod_lotniska_ICAO, kod_lotniska_IATA) VALUES (5, 'Chopin Airport', 'Warsaw', 'Poland', 'EPWA', 'WAW');
INSERT INTO lotniska (id_lotniska, nazwa, miasto, kraj, kod_lotniska_ICAO, kod_lotniska_IATA) VALUES (6, 'Luqa International Airport', 'Luqa', 'Malta', 'LMML', 'MLA');
INSERT INTO lotniska (id_lotniska, nazwa, miasto, kraj, kod_lotniska_ICAO, kod_lotniska_IATA) VALUES (7, 'Pearson International Airport', 'Toronto', 'Canada', 'CYYZ', 'YYZ');
INSERT INTO lotniska (id_lotniska, nazwa, miasto, kraj, kod_lotniska_ICAO, kod_lotniska_IATA) VALUES (8, 'Humberto Delgado Airport', 'Lisbon', 'Spain', 'LPPT', 'LIS');


INSERT INTO linia_lotnicza (id_linii, nazwa_linii, siedziba, kod_linii_ICAO, kod_linii_IATA) VALUES (1, 'PLL LOT', 'Warsaw', 'LOT', 'LO');
INSERT INTO linia_lotnicza (id_linii, nazwa_linii, siedziba, kod_linii_ICAO, kod_linii_IATA) VALUES (2, 'Ryanair', 'Dublin', 'RYR', 'FR');
INSERT INTO linia_lotnicza (id_linii, nazwa_linii, siedziba, kod_linii_ICAO, kod_linii_IATA) VALUES (3, 'TAP Portugal', 'Lisbon', 'TAP', 'TP');
INSERT INTO linia_lotnicza (id_linii, nazwa_linii, siedziba, kod_linii_ICAO, kod_linii_IATA) VALUES (4, 'British Airways', 'London', 'BAW', 'BA');
INSERT INTO linia_lotnicza (id_linii, nazwa_linii, siedziba, kod_linii_ICAO, kod_linii_IATA) VALUES (5, 'Lufthansa', 'Cologne', 'DLH', 'LH');


INSERT INTO samoloty (id_samolotu, model, numer_rejestracyjny, id_linii) VALUES (1, 'Boeing 747-830', 'D-ABYC', 5 );
INSERT INTO samoloty (id_samolotu, model, numer_rejestracyjny, id_linii) VALUES (2, 'Airbus A380-800', 'D-AIMA', 5);
INSERT INTO samoloty (id_samolotu, model, numer_rejestracyjny, id_linii) VALUES (3, 'Boeing 787-900', 'SP-LSF', 1);
INSERT INTO samoloty (id_samolotu, model, numer_rejestracyjny, id_linii) VALUES (4, 'Boeing 737 max 8', 'SP-LVA', 1);
INSERT INTO samoloty (id_samolotu, model, numer_rejestracyjny, id_linii) VALUES (5, 'Boeing 737 max 8', 'EI-HAY', 2);
INSERT INTO samoloty (id_samolotu, model, numer_rejestracyjny, id_linii) VALUES (6, 'Airbus a321neo', 'G-NEOT', 4);
INSERT INTO samoloty (id_samolotu, model, numer_rejestracyjny, id_linii) VALUES (7, 'Boeing 737 max 8', 'EI-ENH', 2);
INSERT INTO samoloty (id_samolotu, model, numer_rejestracyjny, id_linii) VALUES (8, 'Airbus a330neo', 'CS-TUM', 3);
INSERT INTO samoloty (id_samolotu, model, numer_rejestracyjny, id_linii) VALUES (9, 'Bombardier Dash 8 Q400', 'SP-EQD', 1);


INSERT INTO loty (id_lotu, data_operacji, czas_wylotu, czas_przylotu, id_lotniska_wylotu, id_lotniska_przylotu, id_samolotu) VALUES (1, '2022-01-01', '09:00:00', '18:00:00', 1, 4, 1);
INSERT INTO loty (id_lotu, data_operacji, czas_wylotu, czas_przylotu, id_lotniska_wylotu, id_lotniska_przylotu, id_samolotu) VALUES (2, '2022-01-01', '14:00:00', '17:00:00', 2, 4, 2);
INSERT INTO loty (id_lotu, data_operacji, czas_wylotu, czas_przylotu, id_lotniska_wylotu, id_lotniska_przylotu, id_samolotu) VALUES (3, '2022-01-01', '08:00:00', '17:30:00', 7, 4, 3);
INSERT INTO loty (id_lotu, data_operacji, czas_wylotu, czas_przylotu, id_lotniska_wylotu, id_lotniska_przylotu, id_samolotu) VALUES (4, '2022-01-01', '08:00:00', '08:50:00', 5, 4, 4);
INSERT INTO loty (id_lotu, data_operacji, czas_wylotu, czas_przylotu, id_lotniska_wylotu, id_lotniska_przylotu, id_samolotu) VALUES (5, '2022-01-01', '10:00:00', '14:00:00', 6, 4, 5);
INSERT INTO loty (id_lotu, data_operacji, czas_wylotu, czas_przylotu, id_lotniska_wylotu, id_lotniska_przylotu, id_samolotu) VALUES (6, '2022-01-01', '08:00:00', '11:00:00', 4, 2, 6);
INSERT INTO loty (id_lotu, data_operacji, czas_wylotu, czas_przylotu, id_lotniska_wylotu, id_lotniska_przylotu, id_samolotu) VALUES (7, '2022-01-01', '08:10:00', '12:10:00', 4, 6, 7);
INSERT INTO loty (id_lotu, data_operacji, czas_wylotu, czas_przylotu, id_lotniska_wylotu, id_lotniska_przylotu, id_samolotu) VALUES (8, '2022-01-01', '08:20:00', '13:30:00', 4, 8, 8);
INSERT INTO loty (id_lotu, data_operacji, czas_wylotu, czas_przylotu, id_lotniska_wylotu, id_lotniska_przylotu, id_samolotu) VALUES (9, '2022-01-01', '08:30:00', '09:20:00', 4, 5, 9);


INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (1, 234562, '23A', '07', 1);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (2, 234462, '06C', '07', 1);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (3, 234542, '04F', '08', 2);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (4, 234563, '23D', '08', 2);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (5, 234564, '24B', '09', 3);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (6, 234565, '14A', '09', 3);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (7, 234566, '13A', '01', 4);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (8, 234567, '15A', '01', 4);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (9, 234568, '17A', '02', 5);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (10, 234592, '23B', '02', 5);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (11, 234542, '04F', '03', 6);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (12, 234552, '01C', '03', 6);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (13, 234572, '02C', '04', 7);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (14, 234582, '03C', '04', 7);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (15, 234592, '01F', '05', 8);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (16, 234232, '01A', '05', 8);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (17, 234472, '02B', '06', 9);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (18, 234562, '03B', '06', 9);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (19, 238632, '07B', '04', 7);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (20, 085432, '07D', '03', 6);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (21, 742562, '07C', '07', 1);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (22, 965468, '22D', '07', 1);
INSERT INTO karta_pok�adowa (id_karty, numer_karty, numer_miejsca, bramka, id_lotu) VALUES (23, 866445, '27D', '08', 2);


INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (1, 'Sofia', 'Lopez', 1, 1);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (2, 'Mohammed', 'Ahmed', 1, 2);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (3, 'Takumi', 'Sato', 2, 3);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (4, 'Fatima', 'Khan', 2, 4);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (5, 'Ji-Won', 'Park', 3, 5);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (6, 'Emre', 'Yilmaz', 3, 6);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (7, 'Natalie', 'Schmidt', 4, 7);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (8, 'Vasyl', 'Ivanov', 4, 8);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (9, 'Fatimah', 'Abdullah', 5, 9);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (10, 'Marie', 'Duval', 5, 10);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (11, 'Sung', 'Kim', 6, 11);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (12, 'Mateusz', 'Nowak', 6, 12);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (13, 'Gabriel', 'Rodriguez', 7, 13);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (14, 'Jing', 'Wu', 7, 14);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (15, 'Konstantin', 'Petrov', 8, 15);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (16, 'Sana', 'Bouazza', 8, 16);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (17, 'Ravi', 'Sharma', 9, 17);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (18, 'Fatima', 'Moussaoui', 9, 18);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (19, 'Jakub', 'Kowalski', 7, 19);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (20, 'Tatiana', 'Ivanova', 6, 20);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (21, 'John', 'Smith', 1, 21);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (22, 'Maria', 'Kot', 1, 22);
INSERT INTO pasa�erowie (id_pasazera, imie, nazwisko, id_lotu, id_karty) VALUES (23, 'Francesco', 'Garibaldi', 2, 23);


INSERT INTO za�oga (id_zalogi, numer_zalogi, ilosc_lotow, id_lotu) VALUES (1, 164235, 1, 1);
INSERT INTO za�oga (id_zalogi, numer_zalogi, ilosc_lotow, id_lotu) VALUES (2, 526246, 1, 2);
INSERT INTO za�oga (id_zalogi, numer_zalogi, ilosc_lotow, id_lotu) VALUES (3, 589846, 1, 3);
INSERT INTO za�oga (id_zalogi, numer_zalogi, ilosc_lotow, id_lotu) VALUES (4, 124568, 2, 4);
INSERT INTO za�oga (id_zalogi, numer_zalogi, ilosc_lotow, id_lotu) VALUES (5, 685464, 2, 5);
INSERT INTO za�oga (id_zalogi, numer_zalogi, ilosc_lotow, id_lotu) VALUES (6, 982563, 1, 6);
INSERT INTO za�oga (id_zalogi, numer_zalogi, ilosc_lotow, id_lotu) VALUES (7, 357157, 1, 7);
INSERT INTO za�oga (id_zalogi, numer_zalogi, ilosc_lotow, id_lotu) VALUES (8, 476857, 1, 8);
INSERT INTO za�oga (id_zalogi, numer_zalogi, ilosc_lotow, id_lotu) VALUES (9, 178453, 1, 9);


INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (1, 'Giovanni', 'Giorgio', 'pilot', 1);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (2, 'Emily', 'Jones', 'stewardessa', 1);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (3, 'Michael', 'Brown', 'pilot', 1);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (4, 'Fatima', 'Khan', 'stewardessa', 1);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (5, 'Ji-Won', 'Park', 'pilot', 2);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (6, 'Emre', 'Yilmaz', 'stewardessa', 1);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (7, 'Natalia', 'Arbuz', 'pilot', 2);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (8, 'Vasyl', 'Ivanov', 'stewardessa', 2);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (9, 'Fatimah', 'Abdullah', 'pilot', 2);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (10, 'Marie', 'Duval', 'stewardessa', 2);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (11, 'Sung', 'Kim', 'pilot', 2);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (12, 'Mateusz', 'Nowak', 'stewardessa', 2);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (13, 'Gabriel', 'Rodriguez', 'pilot', 2);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (14, 'Jing', 'Wu', 'stewardessa', 2);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (15, 'Konstantin', 'Petrov', 'pilot', 2);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (16, 'Sana', 'Bouazza', 'stewardessa', 2);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (17, 'Ravi', 'Sharma', 'pilot', 3);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (18, 'Tariq', 'Al-Saud', 'pilot', 1);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (19, 'Sofia', 'Garcia', 'pilot', 3);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (20, 'Luis', 'Fernandez', 'pilot', 1);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (21, 'Min-Jae', 'Lee', 'pilot', 3);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (22, 'Ali', 'Khan', 'pilot', 4);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (23, 'Ji-Soo', 'Kim', 'pilot', 4);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (24, 'Fatima', 'Moussaoui', 'pilot', 5);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (25, 'Grzegorz', 'Bown', 'pilot', 5);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (26, 'Tatiana', 'Ivanova', 'pilot', 6);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (27, 'Katarzyna', 'Nowak', 'pilot', 6);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (28, 'Andrew', 'Duda', 'pilot', 7);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (29, 'Anna', 'Wisniewska', 'pilot', 7);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (30, 'Lukas', 'Schmidt', 'pilot', 8);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (31, 'Maria', 'M�ller', 'pilot', 8);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (32, 'Hans', 'Schneider', 'pilot', 9);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (33, 'Katarzyna', 'Kowalczyk', 'pilot', 9);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (34, 'Agnieszka', 'Nowak', 'stewardessa', 3);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (35, 'Ewa', 'Kowalska', 'stewardessa', 3);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (36, 'Paulina', 'Wisniewska', 'stewardessa', 3);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (37, 'Kamila', 'Schmidt', 'stewardessa', 3);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (38, 'Maria', 'M�ller', 'stewardessa', 3);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (39, 'Susanne', 'Schneider', 'stewardessa', 4);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (40, 'Katarzyna', 'Kowalczyk', 'stewardessa', 4);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (41, 'Annie', 'Dupont', 'stewardessa', 4);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (42, 'Julie', 'Martin', 'stewardessa', 4);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (43, 'Emma', 'Leclerc', 'stewardessa', 4);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (44, 'Sophie', 'Lopez', 'stewardessa', 5);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (45, 'Amelie', 'Sato', 'stewardessa', 5);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (46, 'Camille', 'Khan', 'stewardessa', 5);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (47, 'Nathalie', 'Park', 'stewardessa', 5);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (48, 'Eve', 'Yilmaz', 'stewardessa', 5);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (49, 'Emilie', 'Schmidt', 'stewardessa', 6);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (50, 'Marine', 'Ivanov', 'stewardessa', 6);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (51, 'Julia', 'Abdullah', 'stewardessa', 6);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (52, 'Coralie', 'Duval', 'stewardessa', 6);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (53, 'Elodie', 'Bertrand', 'stewardessa', 6);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (54, 'Aniela', 'Bardak', 'stewardessa', 7);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (55, 'Marzena', 'Wi�nia', 'stewardessa', 7);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (56, 'Karolina', 'Brzoza', 'stewardessa', 7);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (57, 'Judy', 'May', 'stewardessa', 7);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (58, 'Elenora', 'Howard', 'stewardessa', 7);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (59, 'March', 'May', 'stewardessa', 8);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (60, 'Andrew', 'Tate', 'steward', 8);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (61, 'Jaros�aw', 'Kaczka', 'steward', 8);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (62, 'Mateusz', 'Moro', 'steward', 8);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (63, 'Krzystof', 'Kolump', 'steward', 8);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (64, 'Grzegorz', '��tek', 'steward', 9);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (65, 'Marcin', 'Najman', 'steward', 9);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (66, 'Karol', 'Wielki', 'steward', 9);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (67, 'Emily', 'Jones', 'stewardessa', 1);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (68, 'Michael', 'Brown', 'pilot', 1);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (69, 'Emily', 'Jones', 'stewardessa', 1);
INSERT INTO pracownicy (id_pracownika, imie, nazwisko, funkcja, id_zalogi) VALUES (70, 'Jaros�aw', 'Kaczy�ski', 'stewardessa', 1);


INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (1, '2021-12-01', 1, 1);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (2, '2021-12-15', 1, 2);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (3, '2021-11-30', 2, 3);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (4, '2021-11-30', 2, 4);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (5, '2021-12-20', 3, 5);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (6, '2021-11-23', 3, 6);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (7, '2021-11-17', 4, 7);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (8, '2021-11-12', 4, 8);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (9, '2021-11-12', 5, 9);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (10, '2021-10-30', 5, 10);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (11, '2021-10-30', 6, 11);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (12, '2021-10-30', 6, 12);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (13, '2021-10-10', 7, 13);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (14, '2021-10-10', 7, 14);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (15, '2021-10-20', 8, 15);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (16, '2021-10-20', 8, 16);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (17, '2021-11-11', 9, 17);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (18, '2021-11-10', 9, 18);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (19, '2021-11-11', 7, 19);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (20, '2021-11-02', 6, 20);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (21, '2021-11-03', 1, 21);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (22, '2021-11-04', 1, 22);
INSERT INTO rezerwacje (id_rezerwacji, data_rezerwacji, id_lotu, id_pasazera) VALUES (23, '2021-11-05', 2, 23);