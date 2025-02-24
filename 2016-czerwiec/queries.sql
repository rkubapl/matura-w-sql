-- Zadanie 5.1.
SELECT m.Imie, m.Nazwisko FROM zdaje z
INNER JOIN maturzysta m ON m.Id_zdajacego = z.Id_zdajacego
INNER JOIN przedmioty p ON p.Id_przedmiotu = z.Id_przedmiotu
WHERE p.Nazwa_przedmiotu = "informatyka"
ORDER BY m.Nazwisko;
-- Zadanie 5.2.
SELECT p.Nazwa_przedmiotu, COUNT(*) as ilosc_osob FROM zdaje z
INNER JOIN przedmioty p ON p.Id_przedmiotu = z.Id_przedmiotu
WHERE p.Typ = "dodatkowy"
GROUP BY p.Nazwa_przedmiotu
ORDER BY ilosc_osob DESC;
-- Zadanie 5.3.
SELECT m.Imie, m.Nazwisko, COUNT(z.ID_przedmiotu) as ilosc FROM zdaje z
INNER JOIN maturzysta m ON m.Id_zdajacego = z.Id_zdajacego
INNER JOIN przedmioty p ON p.Id_przedmiotu = z.Id_przedmiotu
WHERE p.Typ = "dodatkowy"
GROUP BY m.Imie, m.Nazwisko
ORDER BY ilosc DESC;
-- Zadanie 5.4.
SELECT Nazwa_przedmiotu FROM przedmioty WHERE ID_przedmiotu NOT IN (SELECT ID_przedmiotu FROM zdaje);
-- Zadanie 5.5.
SELECT Id_zdajacego, Imie, Nazwisko FROM maturzysta
ORDER BY Data_urodzenia DESC
LIMIT 1;
SELECT p.Nazwa_przedmiotu FROM zdaje z
INNER JOIN przedmioty p ON p.Id_przedmiotu = z.Id_przedmiotu
WHERE Id_zdajacego = 48 AND p.Typ = "dodatkowy";
-- Zadanie 5.6.
SELECT COUNT(*) FROM maturzysta m
WHERE MOD(SUBSTR(m.PESEL, 10, 1),2) = 1;
