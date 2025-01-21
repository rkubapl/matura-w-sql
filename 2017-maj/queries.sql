-- Zadanie 5.1.
SELECT 
SUM(CASE WHEN Rodzaj_meczu = 'T' THEN 1 ELSE 0 END) as towarzyskie,
SUM(CASE WHEN Rodzaj_meczu = 'L' THEN 1 ELSE 0 END) as ligowe,
SUM(CASE WHEN Rodzaj_meczu = 'P' THEN 1 ELSE 0 END) as pucharowe
FROM wyniki w
INNER JOIN druzyny d ON d.Id_druzyny = w.Id_druzyny
WHERE Miasto = 'Kucykowo';

SELECT YEAR(w.Data_meczu) as rok, COUNT(*) as ilosc_meczy FROM wyniki w INNER JOIN druzyny d ON d.Id_druzyny = w.Id_druzyny WHERE d.Miasto = "Kucykowo" GROUP BY YEAR(w.Data_meczu) ORDER BY ilosc_meczy DESC;

-- Zadanie 5.2.
SELECT d.Nazwa, SUM(w.Bramki_zdobyte)-SUM(w.Bramki_stracone) as bilans FROM wyniki w INNER JOIN druzyny d ON d.Id_druzyny = w.Id_druzyny GROUP BY d.Nazwa HAVING bilans = 0; 

-- Zadanie 5.3.
SELECT 
SUM(CASE WHEN Bramki_zdobyte > Bramki_stracone THEN 1 ELSE 0 END) as wygrane,
SUM(CASE WHEN Bramki_zdobyte = Bramki_stracone THEN 1 ELSE 0 END) as remisy,
SUM(CASE WHEN Bramki_zdobyte < Bramki_stracone THEN 1 ELSE 0 END) as przegrane
FROM wyniki w
INNER JOIN druzyny d ON d.Id_druzyny = w.Id_druzyny
WHERE Gdzie = "W";

-- Zadanie 5.4.
SELECT COUNT(DISTINCT Nr_licencji) FROM sedziowie WHERE Nr_licencji NOT IN (SELECT Nr_licencji FROM wyniki WHERE Rodzaj_meczu = "P"); 
