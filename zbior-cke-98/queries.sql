-- Zadanie 98.1.
SELECT Klasa, SUM(CASE WHEN imie LIKE "%a" THEN 1 ELSE 0 END) as dz, COUNT(*) as wszyscy FROM uczniowie u
GROUP BY Klasa
HAVING dz/wszyscy > 0.5;

-- Zadanie 98.2.
SELECT Data FROM oceny
WHERE Ocena = 1
GROUP BY Data
HAVING COUNT(Id_oceny) > 10;

-- Zadanie 98.3.
SELECT u.Klasa, ROUND(AVG(o.Ocena), 2) as srednia FROM oceny o 
INNER JOIN uczniowie u ON u.Id_ucznia = o.Id_ucznia
INNER JOIN przedmioty p ON o.Id_przedmiotu = p.Id_przedmiotu
WHERE Klasa LIKE "IV%" AND p.Nazwa_przedmiotu = "j.polski"
GROUP BY u.Klasa;

-- Zadanie 98.4.
SELECT p.Nazwa_przedmiotu, MONTH(Data) as miesiac, COUNT(*) as ilosc_piatek FROM oceny o
INNER JOIN uczniowie u ON u.Id_ucznia = o.Id_ucznia
INNER JOIN przedmioty p ON o.Id_przedmiotu = p.Id_przedmiotu
WHERE MONTH(Data) >= 9 AND o.Ocena = 5
GROUP BY p.Nazwa_przedmiotu, MONTH(Data);

-- Zadanie 98.5.
SELECT Imie, Nazwisko FROM uczniowie WHERE Klasa = "II A" AND Id_ucznia NOT IN (SELECT o.Id_ucznia FROM oceny o
INNER JOIN przedmioty p ON p.Id_przedmiotu = o.Id_przedmiotu
WHERE Nazwa_przedmiotu = "sieci komputerowe");
