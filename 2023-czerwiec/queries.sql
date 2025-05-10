-- 7.1
SELECT u.typ_u as typ_urzadzenia, COUNT(*) AS ilosc FROM instalacje i
INNER JOIN urzadzenia u ON i.kod_u = u.kod_u
GROUP BY u.typ_u;

-- 7.2
SELECT u.nazwa_u, COUNT(*) AS ilosc_instalacji FROM instalacje i
INNER JOIN urzadzenia u ON i.kod_u = u.kod_u
WHERE MONTH(data_i) = 2 AND YEAR(data_i) = 2019
GROUP BY u.nazwa_u
ORDER BY ilosc_instalacji DESC
LIMIT 1;

-- 7.3
SELECT k.nazwa_k, ROUND((1000000*COUNT(*))/k.ludnosc_k,2) as na_1mln FROM instalacje i
INNER JOIN urzadzenia u ON i.kod_u = u.kod_u
INNER JOIN kraje k ON k.kod_k = i.kod_k
WHERE k.ludnosc_k >= 1000000
GROUP BY k.kod_k
ORDER BY na_1mln DESC
LIMIT 5;

-- 7.4
SELECT u.kod_u, u.nazwa_u, COUNT(DISTINCT i.kod_k) as ilosc_krajow FROM instalacje i
INNER JOIN urzadzenia u ON u.kod_u = i.kod_u
WHERE u.typ_u = "Tablet"
GROUP BY u.kod_u
ORDER BY ilosc_krajow DESC
LIMIT 1;