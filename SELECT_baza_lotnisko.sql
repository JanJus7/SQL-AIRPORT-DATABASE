USE lotnisko;

SELECT samoloty.model, samoloty.numer_rejestracyjny, linia_lotnicza.nazwa_linii, linia_lotnicza.siedziba, linia_lotnicza.kod_linii_IATA, linia_lotnicza.kod_linii_ICAO,
lotniska.miasto AS 'Miasto w kt�rym l�duje', lotniska.kraj AS 'Kraj w kt�rym l�duje'
FROM samoloty
INNER JOIN linia_lotnicza
ON linia_lotnicza.id_linii = samoloty.id_linii
INNER JOIN loty
ON loty.id_samolotu = samoloty.id_samolotu
INNER JOIN lotniska
ON lotniska.id_lotniska = loty.id_lotniska_przylotu

SELECT linia_lotnicza.nazwa_linii, COUNT(samoloty.id_linii) as 'Liczba Samolot�w'
FROM linia_lotnicza
JOIN samoloty ON linia_lotnicza.id_linii = samoloty.id_linii
GROUP BY linia_lotnicza.nazwa_linii
ORDER BY [Liczba Samolot�w] DESC;

SELECT samoloty.model
FROM samoloty
WHERE samoloty.model LIKE '%bus%';

SELECT AVG(za�oga.ilosc_lotow) AS '�rednia ilo�� lot�w na dzi� wszystkich za��g'
FROM za�oga;

SELECT SUM(za�oga.ilosc_lotow) AS 'ca�kowita liczba dzisiejszych lot�w wszystkich za��g'
FROM za�oga;

SELECT COALESCE(imie, 'brak podanego imienia') as imie, nazwisko
FROM pasa�erowie;

SELECT rezerwacje.data_rezerwacji
FROM rezerwacje
WHERE NOT data_rezerwacji < '2021-10-30';

UPDATE lotniska
SET nazwa = 'Fr�d�ric Chopin Airport'
WHERE nazwa = 'Chopin Airport';

SELECT * 
FROM lotniska;

DELETE FROM pracownicy
WHERE nazwisko = 'Kaczy�ski' AND imie = 'Jaros�aw';

SELECT * 
FROM pracownicy;

