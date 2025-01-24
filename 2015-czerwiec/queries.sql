-- Zadanie 5.1.
SELECT w.nazwa, COUNT(*) as ilosc FROM mandaty m INNER JOIN wykroczenia w ON w.kod_wyk = m.kod_wyk GROUP BY w.nazwa ORDER BY ilosc DESC 
-- Zadanie 5.2.
SELECT k.pesel, SUM(w.punkty) as ilosc_punktow FROM kierowcy k
INNER JOIN mandaty m ON k.pesel = m.pesel
INNER JOIN wykroczenia w ON w.kod_wyk = m.kod_wyk
WHERE YEAR(k.data_prawa_jazdy) = 2013
GROUP BY k.pesel
HAVING ilosc_punktow > 20;
-- Zadanie 5.3.
SELECT nazwa FROM wykroczenia WHERE nazwa LIKE "%naruszenie zakazu%";
-- Zadanie 5.4.
SELECT MONTH(m.data_wyk) as msc, COUNT(*) as ilosc, SUM(w.mandat) as kwota FROM mandaty m
INNER JOIN wykroczenia w ON w.kod_wyk = m.kod_wyk
GROUP BY msc  
ORDER BY ilosc ASC limit 1;
-- Zadanie 5.5.
SELECT COUNT(*) FROM kierowcy WHERE pesel NOT IN (SELECT pesel FROM mandaty);
SELECT miasto, COUNT(*) as ilosc FROM kierowcy  WHERE pesel NOT IN (SELECT pesel FROM mandaty)
GROUP BY miasto  
ORDER BY ilosc DESC LIMIT 1;
