/*
 Question: What are the top-paying data analyst jobs?
 - Identify the top 10 highest paying data namyst roles that are available remotely.
 - Focuses on JOb posting with specified salaries (remove Nulls)
 Why? Highlight the top paying jobs opportunities for data analysts.
 */
SELECT job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name as company_name
FROM job_postings_fact
    JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE job_title_short = 'Data Analyst'
    AND job_location = 'Anywhere'
    AND salary_year_avg IS NOT NULL
order by salary_year_avg DESC
LIMIT 10;