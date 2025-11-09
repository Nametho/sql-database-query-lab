SELECT Cafe.Nom AS NomCafe, Type_Origine.Nom AS NomOrigine
FROM Cafe
INNER JOIN CafeToTypeOrigine ON CafeToTypeOrigine.Id_Cafe = Cafe.id
INNER JOIN Type_Origine ON CafeToTypeOrigine.Id_TypeOrigine = Type_Origine.id;