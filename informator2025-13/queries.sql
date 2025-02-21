-- Zadanie 13.1.
SELECT rod.nazwa_aktywnosci, COUNT(*) as ilosc FROM rejestr_aktywnosci rej
INNER JOIN rodzaj_aktywnosci rod ON rod.ID_aktywnosci = rej.ID_aktywnosci
GROUP BY rod.nazwa_aktywnosci
ORDER BY ilosc DESC
LIMIT 5;
-- Zadanie 13.2.
SELECT SUM(TIME_TO_SEC(TIMEDIFF(rej.Godzina_zak, rej.Godzina_rozp)))/3600 
FROM rejestr_aktywnosci rej 
INNER JOIN rodzaj_aktywnosci rod ON rod.ID_aktywnosci = rej.ID_aktywnosci
INNER JOIN pracownicy p ON p.PESEL = rej.PESEL
WHERE p.Miejscowosc = "Gliwice" AND rod.nazwa_aktywnosci = "scianka wspinaczkowa";
-- Zadanie 13.3.
SELECT p.Imie, p.Nazwisko FROM rejestr_aktywnosci rej
INNER JOIN pracownicy p ON p.PESEL = rej.PESEL
GROUP BY p.PESEL, rej.Data
HAVING COUNT(*) >= 2
ORDER BY p.Nazwisko;
-- Zadanie 13.4.
SELECT plec, ROUND(AVG(wiek), 2) FROM (
    SELECT IF(LEFT(PESEL, 2) <= 18, 18-LEFT(PESEL, 2), 100-LEFT(PESEL, 2)+18) as wiek, 
    IF(SUBSTR(PESEL, 10, 1) % 2 = 0, "k","m") as plec
    FROM pracownicy
    WHERE PESEL IN (
        SELECT PESEL FROM rejestr_aktywnosci rej 
        INNER JOIN rodzaj_aktywnosci rod ON rod.ID_aktywnosci = rej.ID_aktywnosci 
        WHERE rod.nazwa_aktywnosci = "rolki")
) q GROUP BY plec;
-- Zadanie 13.5.
SELECT PESEL FROM pracownicy 
WHERE PESEL NOT IN (
    SELECT PESEL FROM rejestr_aktywnosci rej 
    INNER JOIN rodzaj_aktywnosci rod ON rod.ID_aktywnosci = rej.ID_aktywnosci
    WHERE nazwa_aktywnosci = "silownia" OR nazwa_aktywnosci = "joga"
) AND PESEL IN (
    SELECT PESEL FROM rejestr_aktywnosci rej 
    INNER JOIN rodzaj_aktywnosci rod ON rod.ID_aktywnosci = rej.ID_aktywnosci
    WHERE nazwa_aktywnosci = "masaz"
) ORDER BY PESEL;
