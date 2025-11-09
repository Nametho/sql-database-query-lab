CREATE VIEW VuePointsVenteActifs2Ans AS
SELECT IdPointDeVente, IdCafe, Date_Start
FROM CafeToPointDeVente
WHERE Date_End IS NULL
GROUP BY IdPointDeVente, IdCafe, Date_Start
HAVING DATEDIFF(YEAR, Date_Start, GETDATE()) > 2;