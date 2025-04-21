-- 6.1
SELECT COUNT(*) FROM koncerty
WHERE MONTH(data) = 7;
-- 6.2
WITH t as (
  SELECT DISTINCT m.miasto, z.nazwa, z.liczba_artystow FROM koncerty k 
  INNER JOIN zespoly z ON z.id_zespolu = k.id_zespolu 
  INNER JOIN miasta m ON m.kod_miasta = k.kod_miasta), 
f as (SELECT miasto, SUM(liczba_artystow) as ilosc FROM t GROUP BY miasto) 
SELECT miasto FROM f HAVING ilosc=(SELECT MAX(ilosc) FROM f); 
-- 6.3
SELECT m.wojewodztwo, ROUND(COUNT(*)/COUNT(DISTINCT m.miasto),2) as srednia FROM koncerty k
INNER JOIN zespoly z ON z.id_zespolu = k.id_zespolu
INNER JOIN miasta m ON m.kod_miasta = k.kod_miasta
GROUP BY m.wojewodztwo
ORDER BY srednia DESC;
-- 6.4
SELECT nazwa FROM zespoly WHERE id_zespolu NOT IN (SELECT id_zespolu FROM koncerty WHERE data BETWEEN "2017-07-20" AND "2017-07-25");
-- 6.5
SELECT 
	z.nazwa, 
  SUM(CASE WHEN WEEKDAY(k.data) < 5 THEN 1 ELSE 0 END) as dni_powszednie,
  SUM(CASE WHEN WEEKDAY(k.data) >= 5 THEN 1 ELSE 0 END) as dni_weekend
FROM koncerty k
INNER JOIN zespoly z ON z.id_zespolu = k.id_zespolu
GROUP BY z.nazwa
HAVING dni_weekend > dni_powszednie;
