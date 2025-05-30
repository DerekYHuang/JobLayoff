CREATE TABLE layoffs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    company VARCHAR(255),
    location VARCHAR(255),
    total_laid_off INT,
    date DATE,
    percentage_laid_off VARCHAR(10),
    industry VARCHAR(255),
    source TEXT,
    stage VARCHAR(255),
    funds_raised VARCHAR(255),
    country VARCHAR(100),
    date_added DATE
);
