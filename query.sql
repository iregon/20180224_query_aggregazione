SELECT AVG(v.Voto), s.Nome, s.Cognome
FROM valutazioni v, studenti s
WHERE s.Matricola = 14
AND s.Matricola = v.Matricola

/*ore di insegnamento del docente massimo palombo*/

SELECT SUM(i.NumeroOre) as "totaleore", p.Nome, p.Cognome
FROM insegnano i, professori p
WHERE p.Nome = "Massimo"
	AND p.Cognome = "Palombo"
    AND p.CodiceProfessore = i.CodiceProfessore