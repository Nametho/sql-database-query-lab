CREATE TRIGGER TR_Cafe_UpdatePrix
ON Cafe
AFTER UPDATE OF PrixVenteConseillé
AS
BEGIN
	INSERT INTO Historique (idCafe, idPointDeVente, AncienPrix, NouveauPrix)
	VALUES Cafe.id, PointDeVente.id, deleted, inserted
END;


CREATE TABLE Historique(
id INT PRIMARY KEY,
idCafe INT,
idPointDeVente INT,
AncienPrix DECIMAL(5,2),
NouveauPrix DECIMAL(5,2)
);