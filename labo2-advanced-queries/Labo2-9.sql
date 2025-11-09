SELECT Pays.Nom, COUNT(DISTINCT AROME.id) AS NombreArome
FROM Pays
JOIN Ville ON Pays.id = Ville.IdPays
JOIN Adresse ON Ville.id = Adresse.IdVille
JOIN PointDeVente ON Adresse.id = PointDeVente.Adresse
JOIN CafeToPointDeVente ON PointDeVente.id = CafeToPointDeVente.IdPointDeVente
JOIN Cafe ON Cafe.id = CafeToPointDeVente.IdCafe
JOIN AromeToCafe ON Cafe.id = AromeToCafe.Id_Cafe
JOIN Arome ON Arome.id = AromeToCafe.Id_Arome
GROUP BY Pays.Nom
HAVING COUNT(AromeToCafe.Id_Arome) > 3;