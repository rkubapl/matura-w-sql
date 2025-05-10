-- 8.1
SELECT k.Imie, k.Nazwisko, SUM(t.Kwota) as suma_kwot FROM rejestr r
INNER JOIN taryfikator t ON t.IdWykroczenia = r.IdWykroczenia
INNER JOIN kierowcy k ON k.IdOsoby = r.IdOsoby
GROUP BY k.IdOsoby
ORDER BY suma_kwot DESC;

-- 8.2
SELECT MONTH(r.Data) as miesiac, SUM(t.Punkty) as suma_punktow FROM rejestr r
INNER JOIN taryfikator t ON t.IdWykroczenia = r.IdWykroczenia
WHERE t.IdWykroczenia >= 3
GROUP BY miesiac
ORDER BY suma_punktow
LIMIT 1;

-- 8.3
SELECT NrRejestracyjny, Imie, Nazwisko FROM kierowcy
WHERE IdOsoby NOT IN (SELECT IdOsoby FROM rejestr)
ORDER BY NrRejestracyjny;