SELECT COUNT(*) AS Nombre, intensité, torréfaction FROM Cafe
GROUP BY intensité, torréfaction;