-- Zadanie 6.1.
SELECT kraj, COUNT(id_gracza) as ilosc_graczy FROM gracze WHERE YEAR(data_dolaczenia) = 2018 GROUP BY kraj ORDER BY ilosc_graczy DESC LIMIT 5; 
-- Zadanie 6.2.
SELECT j.nazwa, SUM(strzal) AS suma_strzal FROM jednostki j
INNER JOIN klasy k ON j.nazwa = k.nazwa
WHERE j.nazwa LIKE "%elf%" GROUP BY j.nazwa; 
-- Zadanie 6.3.
SELECT id_gracza from gracze WHERE id_gracza NOT IN (SELECT id_gracza FROM jednostki WHERE nazwa = 'artylerzysta'); 
-- Zadanie 6.4.
SELECT k.nazwa, COUNT(k.nazwa) as ilosc_jednostek FROM jednostki j
INNER JOIN klasy k ON k.nazwa = j.nazwa
WHERE ABS(j.lok_x-100) + ABS(j.lok_y-100) <= k.szybkosc;
GROUP BY k.nazwa;
-- Zadanie 6.5.
SELECT COUNT(*) FROM (SELECT lok_x, lok_y, COUNT(DISTINCT id_gracza) as rozni_gracze FROM jednostki GROUP BY lok_x, lok_y HAVING rozni_gracze > 1) q; 
SELECT COUNT(*) FROM (SELECT lok_x, lok_y, COUNT(DISTINCT j.id_gracza) as rozni_gracze, SUM(CASE WHEN g.kraj = "Polska" THEN 1 ELSE 0 END) as polacy FROM jednostki j INNER JOIN gracze g ON g.id_gracza = j.id_gracza GROUP BY lok_x, lok_y HAVING rozni_gracze > 1 AND polacy >= 1) q; 
