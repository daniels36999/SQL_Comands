

DECLARE @tablaTemporal TABLE (id INT IDENTITY (1,1), pais VARCHAR(50))
SELECT * FROM @tablaTemporal

INSERT INTO @tablaTemporal VALUES
	('Daniels1'),
	('Daniels2'),
	('Daniels3'),
	('Daniels4'),
	('Daniels5'),
	('Daniels5'),
	('Daniels6'),
	('Daniels6'),
	('Daniels7');

SELECT * FROM @tablaTemporal