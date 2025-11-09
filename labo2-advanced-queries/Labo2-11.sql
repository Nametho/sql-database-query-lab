SELECT 
    Cafe.Nom AS NomCafe,
    PointDeVente.Nom AS NomPointDeVente,
    Pays.Nom AS NomPays
FROM Cafe
JOIN CafeToPointDeVente 
    ON Cafe.id = CafeToPointDeVente.IdCafe
JOIN PointDeVente 
    ON PointDeVente.id = CafeToPointDeVente.IdPointDeVente
JOIN Adresse 
    ON Adresse.id = PointDeVente.Adresse
JOIN Ville 
    ON Ville.id = Adresse.IdVille
JOIN Pays 
    ON Pays.id = Ville.IdPays
WHERE Pays.Nom IN ('Belgique', 'France');