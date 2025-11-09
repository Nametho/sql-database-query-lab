SELECT Cafe.Nom, CafeToPointDeVente.Date_Start, CafeToPointDeVente.Date_End, Pays.Nom
FROM Cafe
JOIN CafeToPointDeVente ON CafeToPointDeVente.IdCafe = Cafe.id
JOIN PointDeVente ON CafeToPointDeVente.IdPointDeVente = PointDeVente.id
JOIN Adresse ON PointDeVente.Adresse = Adresse.id
JOIN Ville ON Adresse.IdVille = Ville.id
JOIN Pays ON Ville.IdPays = Pays.id
WHERE Pays.Nom = 'Italie'
  AND CafeToPointDeVente.Date_Start <= '2021-12-31'
  AND CafeToPointDeVente.Date_End >= '2021-01-01';