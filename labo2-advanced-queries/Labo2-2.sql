SELECT Cafe.Nom AS NomCafe, Arome.Nom AS Arome
FROM Cafe
LEFT JOIN AromeToCafe ON AromeToCafe.Id_Cafe = Cafe.id
LEFT JOIN AROME ON AromeToCafe.Id_Arome = AROME.id;