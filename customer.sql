--DROP TABLE c6_customer;

--CREATE TABLE c6_customer (
--	id INT IDENTITY PRIMARY KEY,
--	first_name VARCHAR(50) NOT NULL,
--	created_at DATETIME DEFAULT GETDATE(),
--	email VARCHAR(255) UNIQUE
--);

--INSERT INTO c6_customer (first_name, email)
--VALUES ('JACOB', 'jacob@example.com');

--INSERT INTO c6_customer (first_name, created_at, email)
--VALUES ('Jeff', '2017-02-22 12:43PM', 'jeff@example.com');

----INSERT INTO c6_customer (first_name, email)
----VALUES ('John', 'john.com');

--INSERT INTO c6_customer (first_name, email)
--VALUES ('Jane', 'jane@example.com');

--ALTER TABLE c6_customer ADD last_name VARCHAR(255)

--INSERT INTO c6_customer (first_name, last_name, email)
--SELECT 
--      [First_Name]
--      ,[Last_Name]
--      ,[Email]
--  FROM [UA_HALLUX].[dbo].[Customer]
--  WHERE First_Name IS NOT NULL
--    AND Last_Name  IS NOT NULL;

--DELETE FROM c6_customer
--WHERE id = 2

--UPDATE c6_customer
--SET email = 'sofia@example.com'
--WHERE email = 'Jimenez4524@yahoo.com'

SELECT *
FROM c6_customer
--WHERE email LIKE '%@example.com';
