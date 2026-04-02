/*
 Find job postings from the first quarter that have a salary greaeter than $70k
 - Combine job posting tables fromt the first quarter of 2023 
 - Gets Job postings with an average yearly salary > $70000 
 */
select job_title_short,
    job_location,
    job_via,
    job_posted_date::DATE,
    salary_year_avg
FROM job_postings_fact
WHERE EXTRACT(
        MONTH
        FROM job_posted_date
    ) IN (1, 2, 3)
    AND salary_year_avg > 70000
    AND job_title_short = 'Data Analyst'
ORDER BY salary_year_avg DESC;