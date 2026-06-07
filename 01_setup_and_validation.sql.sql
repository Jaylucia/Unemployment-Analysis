-- Project: Unemployment Rate Analysis
-- Phase 1: Setup and Validation
-- Date: May 2026

-- TABLE 1: Main unemployment data
CREATE TABLE IF NOT EXISTS unemployment_clean (
    id                INTEGER PRIMARY KEY AUTOINCREMENT,
    country_name      TEXT,
    country_code      TEXT,
    year              INTEGER,
    unemployment_rate REAL
);

-- TABLE 2: Country classifications
CREATE TABLE IF NOT EXISTS countries_lookup (
    id           INTEGER PRIMARY KEY AUTOINCREMENT,
    country_code TEXT,
    country_name TEXT,
    wb_region    TEXT,
    income_group TEXT
);

-- VALIDATION: Row counts
SELECT COUNT(*) FROM unemployment_clean;
SELECT COUNT(*) FROM countries_lookup;

-- VALIDATION: Null check
SELECT COUNT(*) FROM unemployment_clean
WHERE unemployment_rate IS NULL;

-- VALIDATION: Impossible values
SELECT COUNT(*) FROM unemployment_clean
WHERE unemployment_rate < 0 OR unemployment_rate > 100;

-- VALIDATION: Year and country range
SELECT
    COUNT(DISTINCT country_code) AS country_count,
    MIN(year) AS earliest_year,
    MAX(year) AS latest_year
FROM unemployment_clean;