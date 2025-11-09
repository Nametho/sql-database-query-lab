SELECT COUNT(AromeToCafe.Id_Cafe) AS NombreCafe, AROME.Nom AS Arome
FROM AROME
LEFT JOIN AromeToCafe ON AROME.id = AromeToCafe.Id_Arome
GROUP BY AROME.Nom;