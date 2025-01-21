-- Zadanie 6.1.
SELECT Pojemnosc_dysku, COUNT(Pojemnosc_dysku) as ilosc FROM komputery
GROUP BY Pojemnosc_dysku  
ORDER BY ilosc DESC
LIMIT 10;

-- Zadanie 6.2.
SELECT k.Numer_komputera, COUNT(k.Numer_komputera) as ilosc_napraw FROM komputery k
INNER JOIN awarie a ON k.Numer_komputera = a.Numer_komputera
INNER JOIN naprawy n ON n.Numer_zgloszenia = a.Numer_zgloszenia
WHERE k.Sekcja = 'A' and n.Rodzaj = 'wymiana'
GROUP BY k.Numer_komputera
HAVING ilosc_napraw >= 10;

-- Zadanie 6.3.
WITH t as (SELECT Sekcja, COUNT(Sekcja) as ilosc_komputerow_sekcja FROM komputery
GROUP BY Sekcja)
SELECT DATE(a.Czas_awarii) as d, k.Sekcja, COUNT(DISTINCT a.Numer_komputera) as ilosc_awari_komputerow, t.ilosc_komputerow_sekcja FROM komputery k
INNER JOIN awarie a ON k.Numer_komputera = a.Numer_komputera
INNER JOIN naprawy n ON n.Numer_zgloszenia = a.Numer_zgloszenia
INNER JOIN t ON t.Sekcja = k.Sekcja
GROUP BY d, k.Sekcja
HAVING ilosc_awari_komputerow = t.ilosc_komputerow_sekcja;

-- Zadanie 6.4.
SELECT a.Numer_zgloszenia, a.Czas_awarii as poczatek, MAX(n.Czas_naprawy) as koniec, MAX(n.Czas_naprawy)-a.Czas_awarii FROM awarie a
INNER JOIN naprawy n ON n.Numer_zgloszenia = a.Numer_zgloszenia
GROUP BY n.Numer_zgloszenia  
ORDER BY `MAX(n.Czas_naprawy)-a.Czas_awarii` DESC LIMIT 1;

-- Zadanie 6.5.
SELECT COUNT(Numer_komputera) FROM komputery WHERE Numer_komputera NOT IN (SELECT Numer_komputera FROM awarie WHERE Priorytet >= 8); 
