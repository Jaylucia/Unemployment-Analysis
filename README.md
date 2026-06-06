    # Unemployment Analysis Review

## 1. Executive Summary

Global unemployment rates have declined meaningfully over the past two and a half decades, falling from 8.32% in 2000 to 6.45% in 2025. This broad improvement, however, masks significant regional disparities that have persisted throughout the period. The Middle East and North Africa consistently recorded the highest regional averages, while East Asia and the Pacific maintained the lowest. Two major global shocks, the 2008 financial crisis and the COVID-19 pandemic, produced visible but ultimately temporary disruptions to the downward trend. Structural unemployment remains a severe challenge in parts of Sub-Saharan Africa, where individual country rates exceed 30%.

## 2. Methodology & Data Notes

Data was sourced exclusively from the World Bank Open Data platform (Indicator: SL.UEM.TOTL.ZS — Unemployment, total as % of total labour force, modelled ILO estimate). The dataset covers 235 countries and territories annually from 2000 to 2025. Regional classifications follow the World Bank's seven-region taxonomy.

Raw data was downloaded in wide format and reshaped to long format using Python (pandas). Rows with missing unemployment rate values were dropped rather than imputed, consistent with best practice for official statistics. No values outside the valid range of 0–100% were found. Regional aggregates included in the World Bank dataset were excluded from the country-level analysis. The cleaned dataset was stored in a local SQLite database and validated through SQL before analysis.

## 3. Key Findings

### Finding 1: A sustained long-run decline with two interruptions

Global average unemployment fell steadily from 8.32% in 2000 to 7.16% by 2008, before stabilizing in the years following the financial crisis. A second trough of 7.05% was reached in 2019, followed by a sharp pandemic-driven spike to 8.11% in 2020. Recovery has been consistent since, with the 2025 rate of 6.45% representing the lowest point in the entire 25-year period. The overall trajectory is one of improvement, punctuated by two well-documented global shocks.

### Finding 2: Regional disparities are large and persistent

The Middle East and North Africa recorded the highest regional average unemployment rate across the period, approaching 10% on average, nearly three times the East Asia and Pacific average, which was the lowest of all seven regions at approximately 3.5%. Sub-Saharan Africa recorded the second-highest regional average. These gaps have not narrowed substantially over the 25-year period, suggesting structural rather than cyclical causes.

### Finding 3: The 2020 shock was severe but short-lived globally

The COVID-19 pandemic produced the sharpest single-year rise in global average unemployment in the dataset, a jump of approximately one percentage point between 2019 and 2020. However, recovery was faster than after the 2008 crisis, with rates declining consistently from 2021 onward. This suggests that pandemic-era labour market interventions, particularly in higher-income countries, were effective in limiting long-term unemployment scarring.

### Finding 4: Extreme unemployment is concentrated in a small number of countries

The ten highest unemployment countries in 2025 are predominantly from Sub-Saharan Africa. Eswatini leads at 34.20%, followed by South Africa at 32.39% and Djibouti at 26.02%. These figures are not outliers in the statistical sense as they reflect documented structural conditions, including skills mismatches, demographic pressures, and constrained economic diversification. They warrant a separate, country-level investigation beyond the scope of this analysis.

### Finding 5: The pre-2008 decline was the most sustained improvement on record

Between 2003 and 2008, global average unemployment fell from 8.46% to 7.16%, a reduction of 1.3 percentage points over five years. This represents the longest uninterrupted decline in the dataset and coincided with a period of broad global economic expansion. No comparable sustained improvement has been recorded since, though the post-2020 recovery is approaching similar momentum.

## 4. Limitations

The dataset reflects modelled ILO estimates as harmonised by the World Bank, meaning figures for some countries, particularly lower-income economies with limited statistical capacity, are modelled rather than directly surveyed. Coverage gaps exist for certain countries and years. The analysis covers only total unemployment; youth unemployment, long-term unemployment, and underemployment, which are arguably more policy-relevant indicators, are outside the scope of this dataset and were not analyzed. Regional averages are unweighted by population, meaning small high-unemployment countries carry equal weight to large economies in regional calculations. Cross-project comparison with the inflation dataset from the previous project has not yet been conducted and remains a recommended next step.

    
