-- 8.1
SELECT kod_szczepionki, COUNT(*) as ilosc_dawek FROM wizyty
GROUP BY kod_szczepionki
ORDER BY ilosc_dawek DESC;

-- 8.2
WITH t AS (
    SELECT DISTINCT Pesel as pesel FROM wizyty
    WHERE kod_szczepionki = "sz12_3d"
)
SELECT COUNT(DISTINCT pesel) as wszyscy, SUM(CASE WHEN SUBSTR(pesel, 10,1) % 2 = 0 THEN 1 ELSE 0 END) as kobiety FROM t;

-- 8.3
SELECT YEAR(w.data_szczepienia), MONTH(w.data_szczepienia), COUNT(*) as ilosc_osob FROM wizyty w
INNER JOIN szczepionki s ON s.kod_szczepionki = w.kod_szczepionki
WHERE w.numer_dawki = s.liczba_dawek
GROUP BY YEAR(w.data_szczepienia), MONTH(w.data_szczepienia)
ORDER BY ilosc_osob DESC
LIMIT 1;