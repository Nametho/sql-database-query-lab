SELECT Cafe.Nom AS NomCafe, PointDeVente.Nom AS PointDeVente, PointDeVente.Adresse, Ville.Nom 
FROM
Cafe
INNER JOIN CafeToPointDeVente ON CafeToPointDeVente.IdCafe = Cafe.id
INNER JOIN PointDeVente ON CafeToPointDeVente.IdPointDeVente = PointDeVente.id
INNER JOIN Adresse ON PointDeVente.Adresse = Adresse.id
INNER JOIN Ville ON Adresse.IdVille = IdVille
WHERE Ville.id IN (
    SELECT Ville.id
    FROM Cafe
    INNER JOIN CafeToPointDeVente ON CafeToPointDeVente.IdCafe = Cafe.id
    INNER JOIN PointDeVente ON CafeToPointDeVente.IdPointDeVente = PointDeVente.id
    INNER JOIN Adresse ON PointDeVente.Adresse = Adresse.id
    INNER JOIN Ville ON Adresse.IdVille = Ville.id
    WHERE CAST(Cafe.Nom AS VARCHAR) = 'Espresso Roma'
    );