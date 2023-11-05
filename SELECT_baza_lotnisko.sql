USE lotnisko;

SELECT samoloty.model, samoloty.numer_rejestracyjny, linia_lotnicza.nazwa_linii, linia_lotnicza.siedziba, linia_lotnicza.kod_linii_IATA, linia_lotnicza.kod_linii_ICAO,
lotniska.miasto AS 'Miasto w którym l¹duje', lotniska.kraj AS 'Kraj w którym l¹duje'
FROM samoloty
INNER JOIN linia_lotnicza
ON linia_lotnicza.id_linii = samoloty.id_linii
INNER JOIN loty
ON loty.id_samolotu = samoloty.id_samolotu
INNER JOIN lotniska
ON lotniska.id_lotniska = loty.id_lotniska_przylotu

SELECT linia_lotnicza.nazwa_linii, COUNT(samoloty.id_linii) as 'Liczba Samolotów'
FROM linia_lotnicza
JOIN samoloty ON linia_lotnicza.id_linii = samoloty.id_linii
GROUP BY linia_lotnicza.nazwa_linii
ORDER BY [Liczba Samolotów] DESC;

SELECT samoloty.model
FROM samoloty
WHERE samoloty.model LIKE '%bus%';

SELECT AVG(za³oga.ilosc_lotow) AS 'œrednia iloœæ lotów na dziœ wszystkich za³óg'
FROM za³oga;

SELECT SUM(za³oga.ilosc_lotow) AS 'ca³kowita liczba dzisiejszych lotów wszystkich za³óg'
FROM za³oga;

SELECT COALESCE(imie, 'brak podanego imienia') as imie, nazwisko
FROM pasa¿erowie;

SELECT rezerwacje.data_rezerwacji
FROM rezerwacje
WHERE NOT data_rezerwacji < '2021-10-30';

UPDATE lotniska
SET nazwa = 'Frédéric Chopin Airport'
WHERE nazwa = 'Chopin Airport';

SELECT * 
FROM lotniska;

DELETE FROM pracownicy
WHERE nazwisko = 'Kaczyñski' AND imie = 'Jaros³aw';

SELECT * 
FROM pracownicy;

