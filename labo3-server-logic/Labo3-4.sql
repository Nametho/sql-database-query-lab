CREATE PROCEDURE AssocierArome

@CafeExistant INT,
@AromeExistant INT

AS
BEGIN
	IF EXISTS (SELECT 1 FROM AromeToCafe 
		WHERE Id_Cafe = @CafeExistant 
		AND Id_Arome = @AromeExistant)
			BEGIN
				RAISERROR('Cette association existe déjà', 16, 1);
				RETURN;
			END;

	INSERT INTO AromeToCafe (id_Cafe, id_Arome)
	VALUES (@CafeExistant, @AromeExistant)
END;