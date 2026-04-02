CREATE TABLE first_quarter_jobs AS (
    SELECT *
    FROM january_jobs
    UNION ALL
    SELECT *
    FROM February_jobs
    UNION ALL
    SELECT *
    FROM March_jobs
);
SELECT first_quarter_jobs.job_title_short,
    first_quarter_jobs.job_location,
    first_quarter_jobs.job_via,
    first_quarter_jobs.job_posted_date::date,
    first_quarter_jobs.salary_year_avg
FROM first_quarter_jobs
WHERE salary_year_avg > 75000
    AND job_title_short = 'Data Analyst'
ORDER BY salary_year_avg DESC;