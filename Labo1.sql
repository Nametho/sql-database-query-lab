SELECT intensité, PrixVenteConseillé FROM Cafe;

SELECT COUNT(*) AS NombreCafes FROM Cafe;

SELECT * FROM Cafe WHERE Intensité >= 5;

SELECT Intensité, COUNT(id) AS NombreCafes FROM Cafe
GROUP BY Intensité;

SELECT * FROM Cafe WHERE PrixVenteConseillé > 5 
AND PrixVenteConseillé < 10;

SELECT Nom, PrixVenteConseillé
FROM Cafe
ORDER BY PrixVenteConseillé DESC;

SELECT COUNT(DISTINCT Id_Arome) AS NombreAromes
FROM AromeToCafe;

SELECT * FROM Cafe WHERE Description LIKE '%bio%';

SELECT AVG(PrixVenteConseillé) AS PrixMoyen
FROM Cafe