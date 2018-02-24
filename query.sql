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

/*individuare il voto massimo e minimo delle valutazioni di informatica della classe 5BI*/

SELECT MAX(v.Voto) as "votomax",  MIN(v.Voto) as "votomin"
FROM valutazioni v, classi c, studenti s
WHERE c.Classe = "5B"
    AND c.Specializzazione = "inf"
    AND v.Materia = "INFORMATICA"
    AND c.CodiceClasse = s.CodiceClasse
    AND s.Matricola = v.Matricola
    
/*determinare il numero di valutazioni comprese tra 6 e 10 della materia matematica*/


/*determinare il numero di classi della specializzazione informatica*/

SELECT COUNT(*)
FROM classi
WHERE Specializzazione = "inf"