use City_of_Chicago_Crimes


--Number of Crimes by Year
-- Yýllara Göre Suç Sayýsý

Select year, COUNT(*) AS Total_Crimes
from Crimes
group by year
order by year

--Neighborhoods with the Most Crime (Community Area or District)
-- En Çok Suç Ýþlenen Mahalleler (Community Area veya District)

Select district, COUNT(*) AS crime_count
from Crimes
group by District
order by crime_count desc


select [Community Area], COUNT(*) as crime_count
from Crimes
group by [Community Area]
order by crime_count desc

--The Most Common Types of Crime
--En Yaygýn Suç Türleri

Select [Primary Type], COUNT(*) AS FREQUENCY
from Crimes
group by [Primary Type]
order by FREQUENCY desc

--Crime Rate Resulting in Arrests
--Tutuklamayla Sonuçlanan Suç Oraný

Select 
	COUNT(CASE WHEN arrest = 'True' THEN 1 END) * 100.00 / COUNT(*) AS arrest_rate_percentage
FROM Crimes

--Distribution of Domestic Violence Crimes by Year
--Aile Ýçi (Domestic) Þiddet Suçlarýnýn Yýllara Göre Daðýlýmý

SELECT year, COUNT(*) AS DOMESTIC_CRIMES
FROM Crimes
WHERE Domestic = 'True'
group by Year
order by year 

--Average Daily Crime Number (by year)
--Günlük Ortalama Suç Sayýsý (yýla göre)

SELECT year, COUNT(*) / 365.0 AS avg_daily_crimes
FROM crimes
GROUP BY year;

--Arrest Rates for Specific Crime Types
-- Belirli Suç Türlerinde Tutuklama Oraný

select 
	[Primary Type],
	COUNT(CASE WHEN Arrest = 'True' THEN 1 END) * 100.00 / COUNT(*) AS arrest_rate
from Crimes
GROUP BY [Primary Type]
ORDER BY arrest_rate desc


--Crime Counts by Police Patrol Area (Beat)
--Polis Devriye Bölgesine (Beat) Göre Suç Sayýsý

select beat, COUNT(*) AS crime_count
from Crimes
Group by beat
order by crime_count desc


--Distribution of Crimes According to Location Description
--Suçlarýn Lokasyon Açýklamasýna Göre Daðýlýmý

SELECT  [Location Description],COUNT(*) AS crime_count
from crimes
group by [Location Description]
order by crime_count desc

--Most Congested Area for a Specific Type of Crime
--Belirli Bir Suç Türü Ýçin En Yoðun Bolge

select [Community Area], COUNT(*) AS theft_count
from Crimes
WHERE [Primary Type] = 'THEFT'
GROUP BY [Community Area]
order by theft_count desc


--Singular Count of Crimes Having the Same Meaning
--Ayný Anlama Sahip Suçlarýn Tekil Sayýmý

SELECT Description, COUNT(*) AS COUNT
from Crimes
group by Description
order by count desc


--Distribution of Crimes According to Last Updated Date
--Suçlarýn Son Güncelleme Tarihine Göre Daðýlýmý

select [Updated On], COUNT(*) AS updated_count
from Crimes
group by [Updated On]
order by [Updated On]

--Change in the Number of Arrests by Year
--Tutuklama Sayýsýnýn Yýla Göre Deðiþimi

select year, COUNT(*) AS ARREST
from Crimes
WHERE Arrest = 'True'
group by year
order by Year


