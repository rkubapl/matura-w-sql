-- 7.1
SELECT g.nazwa, COUNT(o.ocena) as ilosc_ocen FROM oceny o 
INNER JOIN gry g ON g.id_gry = o.id_gry
GROUP BY g.id_gry  
ORDER BY ilosc_ocen DESC;

-- 7.2
SELECT g.nazwa, ROUND(AVG(o.ocena),2) as srednia_ocen FROM oceny o 
INNER JOIN gry g ON g.id_gry = o.id_gry
WHERE g.kategoria = "imprezowa"
GROUP BY g.id_gry;

-- 7.3
SELECT COUNT(DISTINCT id_gracza) FROM oceny WHERE id_gracza NOT IN (SELECT id_gracza FROM oceny WHERE stan = "posiada");
-- opcjonalnie
WITH t as (
  SELECT SUM(CASE WHEN stan = "posiada" THEN 1 ELSE 0 END) as ile_posiada FROM oceny
  GROUP BY id_gracza
  HAVING ile_posiada = 0
)
SELECT COUNT(*) FROM t;

-- 7.4
WITH wszyst AS (
	SELECT IF(gr.wiek <= 19, "juniorzy", IF(gr.wiek <= 49, "seniorzy", "weterani")) as kat_wiekowa, g.nazwa, COUNT(*) as ilosc_ocen FROM oceny o
	INNER JOIN gry g ON g.id_gry = o.id_gry
	INNER JOIN gracze gr ON gr.id_gracza = o.id_gracza
	GROUP BY kat_wiekowa, g.nazwa),
maxy AS (
	SELECT kat_wiekowa, MAX(ilosc_ocen) as ilosc_ocen FROM wszyst GROUP BY kat_wiekowa
)
SELECT maxy.kat_wiekowa, wszyst.nazwa, maxy.ilosc_ocen FROM maxy 
INNER JOIN wszyst ON wszyst.ilosc_ocen = maxy.ilosc_ocen AND maxy.kat_wiekowa = wszyst.kat_wiekowa;
