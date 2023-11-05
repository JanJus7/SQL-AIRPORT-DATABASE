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

	
	
	CREATE PROCEDURE Zwolnij_Kaczy�skiego
(
    @id_pracownika INT
)
AS
BEGIN
    DELETE FROM pracownicy WHERE pracownicy.id_pracownika = @id_pracownika;
END;


DROP PROCEDURE dodaj_lot
DROP PROCEDURE Zwolnij_Kaczy�skiego


EXEC dodaj_lot 10, '2022-01-01', '08:00:00', '10:00:00', 1, 2, 6;
EXEC Zwolnij_Kaczy�skiego 70;



CREATE TRIGGER update_za�oga ON loty
AFTER INSERT
AS
BEGIN
    UPDATE za�oga
    SET ilosc_lotow = ilosc_lotow + 1
    FROM za�oga
    JOIN inserted 
	ON za�oga.id_lotu = inserted.id_lotu
	WHERE za�oga.id_lotu = inserted.id_lotu
END;



