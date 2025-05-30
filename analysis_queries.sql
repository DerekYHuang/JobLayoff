-- Total layoffs by year
SELECT YEAR(date) AS year, SUM(total_laid_off) AS total_layoffs
FROM layoffs
GROUP BY year
ORDER BY year;

-- Top 10 companies by total laid off
SELECT company, SUM(total_laid_off) AS total_layoffs
FROM layoffs
GROUP BY company
ORDER BY total_layoffs DESC
LIMIT 10;

-- Total layoffs by industry
SELECT industry, SUM(total_laid_off) AS total_layoffs
FROM layoffs
GROUP BY industry
ORDER BY total_layoffs DESC
LIMIT 10;
