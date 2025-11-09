CREATE VIEW V_Cafes_Aromes_Terroirs AS
SELECT 
    Cafe.Nom AS NomCafe,
    Arome.Nom AS NomArome,
    Terroir.Nom AS NomTerroir
FROM Cafe
JOIN AromeToCafe 
    ON Cafe.id = AromeToCafe.Id_Cafe
JOIN Arome 
    ON Arome.id = AromeToCafe.Id_Arome
JOIN AromeToTypeOrigine 
    ON Arome.id = AromeToTypeOrigine.Id_Arome
JOIN Type_Origine 
    ON Type_Origine.id = AromeToTypeOrigine.Id_Origine
JOIN Terroir 
    ON Terroir.id = Type_Origine.Terroir;

SELECT *
FROM V_Cafes_Aromes_Terroirs
WHERE NomArome = 'Chocolat'
  AND NomTerroir = 'Sumatra';