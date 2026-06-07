-- Project: Unemployment Rate Analysis
-- Phase 3: SQL Analysis Queries
-- Date: May 2026

-- QUERY
SELECT
	u.country_name,
	u.country_code,
	u.year,
	u.unemployment_rate,
	c.wb_region,
	c.income_group
FROM unemployment_clean u
JOIN countries_lookup c ON u.country_code = c.country_code
LIMIT 10;

-- QUERY 1: Calculating unemployment average rate by region and by year
SELECT
	c.wb_region,
	u.year,
	ROUND(AVG(u.unemployment_rate),2) AS avg_unemployment_rate
FROM unemployment_clean u
JOIN countries_lookup c ON u.country_code = c.country_code
WHERE c.wb_region IS NOT NULL
GROUP BY c.wb_region, u.year
ORDER BY avg_unemployment_rate DESC;

-- QUERY 2: Calculating the top 10 highest unemployment countries by most recent year
SELECT 
	country_name,
	year,
	unemployment_rate
FROM unemployment_clean
WHERE year = (SELECT MAX(year) FROM unemployment_clean)
ORDER BY unemployment_rate DESC
LIMIT 10;

-- QUERY 3: Calculating year-over-year change for each country
SELECT 
	country_name,
	country_code,
	year,
	unemployment_rate,
	ROUND(unemployment_rate - LAG(unemployment_rate)
		OVER(PARTITION BY country_code ORDER BY year), 2) AS yoy_change
FROM unemployment_clean
ORDER BY country_code, year;

