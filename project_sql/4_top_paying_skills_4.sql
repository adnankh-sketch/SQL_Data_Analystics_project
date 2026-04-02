/*
 Question:What are the top  skills based on salary?
 - Look at the average salary associated with each skill for data analyst positions
 - Focuses on roles with specified salaries, regardless of location
 -    Why?it reveals how different skills impact levels for Data analyst and helps identify the most financially
 -   rewardind skills to acquire or improve 
 */
SELECT skills,
    ROUND(avg(salary_year_avg), 0) AS avg_salary
FROM job_postings_fact
    JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
    JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst'
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = TRUE
GROUP BY skills
Order BY avg_salary DESC
LIMIT 5;