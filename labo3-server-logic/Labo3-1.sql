CREATE PROCEDURE AjouterNouveauCafe
	@Nom VARCHAR(100), 
	@Intensité INT,
	@Description VARCHAR(MAX),
	@PrixVenteConseillé DECIMAL(5,2),
	@Torréfaction INT
AS
BEGIN
	IF EXISTS (SELECT 1 FROM Cafe WHERE CAST(Nom AS VARCHAR) = @Nom)
		BEGIN
			RAISERROR('Un café avec ce nom existe déjà.', 16, 1);
			RETURN;
		END

	INSERT INTO Cafe (Nom, Intensité, Description, PrixVenteConseillé, Torréfaction)
	VALUES (@Nom, @Intensité, @Description, @PrixVenteConseillé, @Torréfaction);

	PRINT 'Le café' + @Nom + 'a été ajouté avec succès.';
END;

EXEC AjouterNouveauCafe
	@Nom = 'Café Marocain',
    @Intensité = 6,
    @Description = 'Un café épicé aux notes de cannelle',
    @PrixVenteConseillé = 7.50,
    @Torréfaction = 2;