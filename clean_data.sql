-- Remove exact duplicates (requires a unique ID column)
DELETE FROM layoffs
WHERE id NOT IN (
    SELECT id FROM (
        SELECT MIN(id) AS id
        FROM layoffs
        GROUP BY company, location, total_laid_off, date, percentage_laid_off,
                 industry, source, stage, funds_raised, country, date_added
    ) AS temp
);

-- Replace NULLs in 'industry' and 'location' with 'Unknown'
UPDATE layoffs SET industry = 'Unknown' WHERE industry IS NULL;
UPDATE layoffs SET location = 'Unknown' WHERE location IS NULL;

-- Trim and lowercase 'company' names
UPDATE layoffs SET company = LOWER(TRIM(company));

-- Convert 'date' column to proper DATE format (if needed)
UPDATE layoffs SET date = STR_TO_DATE(date, '%m/%d/%Y') WHERE date IS NOT NULL;
