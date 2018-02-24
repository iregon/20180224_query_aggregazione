SELECT AVG(v.Voto), s.Nome, s.Cognome
FROM valutazioni v, studenti s
WHERE s.Matricola = 14
AND s.Matricola = v.Matricola