USE lotnisko;

CREATE PROCEDURE dodaj_lot
(
    @id_lotu INT,
	@data_operacji DATE, 
    @czas_wylotu TIME, 
    @czas_przylotu TIME, 
    @id_lotniska_wylotu INT, 
    @id_lotniska_przylotu INT, 
    @id_samolotu INT
)
AS
BEGIN
    INSERT INTO loty (id_lotu, data_operacji, czas_wylotu, czas_przylotu, id_lotniska_wylotu, id_lotniska_przylotu, id_samolotu)
    VALUES (@id_lotu, @data_operacji, @czas_wylotu, @czas_przylotu, @id_lotniska_wylotu, @id_lotniska_przylotu, @id_samolotu);
END;

	
	
	CREATE PROCEDURE Zwolnij_Kaczy雟kiego
(
    @id_pracownika INT
)
AS
BEGIN
    DELETE FROM pracownicy WHERE pracownicy.id_pracownika = @id_pracownika;
END;


DROP PROCEDURE dodaj_lot
DROP PROCEDURE Zwolnij_Kaczy雟kiego


EXEC dodaj_lot 10, '2022-01-01', '08:00:00', '10:00:00', 1, 2, 6;
EXEC Zwolnij_Kaczy雟kiego 70;



CREATE TRIGGER update_za這ga ON loty
AFTER INSERT
AS
BEGIN
    UPDATE za這ga
    SET ilosc_lotow = ilosc_lotow + 1
    FROM za這ga
    JOIN inserted 
	ON za這ga.id_lotu = inserted.id_lotu
	WHERE za這ga.id_lotu = inserted.id_lotu
END;



