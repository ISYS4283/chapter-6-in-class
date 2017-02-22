SELECT * FROM Song
WHERE Song_Name LIKE 'vivacious%';

SELECT * FROM Customer
WHERE Zip_Code = '78582';

SELECT * FROM Customer
WHERE Zip_Code = '78582'
ORDER BY First_Name DESC;

SELECT * FROM Band
-- automatic conversion works on some platforms
--WHERE Formation_Date > 'September 2006';
-- explicit datatype matching works everywhere
WHERE Formation_Date > '2006-09-01 00:00:00.000';
