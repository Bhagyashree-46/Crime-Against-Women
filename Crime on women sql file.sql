--Create database 
CREATE DATABASE Crime_On_Womens;

--for using the database to create table in database
USE Crime_On_Womens;

--Select data from table CrimesOnWomenData to check the data in table
SELECT * FROM CrimesOnWomenData;

--View top 10 States with Most Raped Cases
SELECT TOP 10 State , SUM(Rapes) AS Total_Rape_Cases
FROM CrimesOnWomenData
GROUP BY State
ORDER BY Total_Rape_Cases DESC;

SELECT * FROM Crimes_Against_Women;

--Check Yearly Trend for Crimes Against Women
SELECT Year,
SUM(Rapes + Kidnapping_and_Abduction + Dowry_Death+Assault_Against_Women 
+ Assault_Against_Modesty_of_Women + Cruelty_by_Husband_or_by_his_Relatives
+Importation_of_Girls)
FROM Crimes_Against_Women
GROUP BY Year
ORDER BY Year;

