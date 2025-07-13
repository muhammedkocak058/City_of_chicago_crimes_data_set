use City_of_Chicago_Crimes


--Number of Crimes by Year
-- Y�llara G�re Su� Say�s�

Select year, COUNT(*) AS Total_Crimes
from Crimes
group by year
order by year

--Neighborhoods with the Most Crime (Community Area or District)
-- En �ok Su� ��lenen Mahalleler (Community Area veya District)

Select district, COUNT(*) AS crime_count
from Crimes
group by District
order by crime_count desc


select [Community Area], COUNT(*) as crime_count
from Crimes
group by [Community Area]
order by crime_count desc

--The Most Common Types of Crime
--En Yayg�n Su� T�rleri

Select [Primary Type], COUNT(*) AS FREQUENCY
from Crimes
group by [Primary Type]
order by FREQUENCY desc

--Crime Rate Resulting in Arrests
--Tutuklamayla Sonu�lanan Su� Oran�

Select 
	COUNT(CASE WHEN arrest = 'True' THEN 1 END) * 100.00 / COUNT(*) AS arrest_rate_percentage
FROM Crimes

--Distribution of Domestic Violence Crimes by Year
--Aile ��i (Domestic) �iddet Su�lar�n�n Y�llara G�re Da��l�m�

SELECT year, COUNT(*) AS DOMESTIC_CRIMES
FROM Crimes
WHERE Domestic = 'True'
group by Year
order by year 

--Average Daily Crime Number (by year)
--G�nl�k Ortalama Su� Say�s� (y�la g�re)

SELECT year, COUNT(*) / 365.0 AS avg_daily_crimes
FROM crimes
GROUP BY year;

--Arrest Rates for Specific Crime Types
-- Belirli Su� T�rlerinde Tutuklama Oran�

select 
	[Primary Type],
	COUNT(CASE WHEN Arrest = 'True' THEN 1 END) * 100.00 / COUNT(*) AS arrest_rate
from Crimes
GROUP BY [Primary Type]
ORDER BY arrest_rate desc


--Crime Counts by Police Patrol Area (Beat)
--Polis Devriye B�lgesine (Beat) G�re Su� Say�s�

select beat, COUNT(*) AS crime_count
from Crimes
Group by beat
order by crime_count desc


--Distribution of Crimes According to Location Description
--Su�lar�n Lokasyon A��klamas�na G�re Da��l�m�

SELECT  [Location Description],COUNT(*) AS crime_count
from crimes
group by [Location Description]
order by crime_count desc

--Most Congested Area for a Specific Type of Crime
--Belirli Bir Su� T�r� ��in En Yo�un Bolge

select [Community Area], COUNT(*) AS theft_count
from Crimes
WHERE [Primary Type] = 'THEFT'
GROUP BY [Community Area]
order by theft_count desc


--Singular Count of Crimes Having the Same Meaning
--Ayn� Anlama Sahip Su�lar�n Tekil Say�m�

SELECT Description, COUNT(*) AS COUNT
from Crimes
group by Description
order by count desc


--Distribution of Crimes According to Last Updated Date
--Su�lar�n Son G�ncelleme Tarihine G�re Da��l�m�

select [Updated On], COUNT(*) AS updated_count
from Crimes
group by [Updated On]
order by [Updated On]

--Change in the Number of Arrests by Year
--Tutuklama Say�s�n�n Y�la G�re De�i�imi

select year, COUNT(*) AS ARREST
from Crimes
WHERE Arrest = 'True'
group by year
order by Year


