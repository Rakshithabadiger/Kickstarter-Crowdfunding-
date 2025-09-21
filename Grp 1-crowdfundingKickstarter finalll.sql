Create database crowdfundingkickstarter;
use crowdfundingkickstarter;

-- Total Number of Projects based on Outcome
SELECT state, COUNT(*) AS total_projects
FROM crowdfundingkickstarter.projects
GROUP BY state
ORDER BY total_projects DESC;

-- Total Number of Projects Based on Locations --
SELECT country, COUNT(*) AS total_projects
FROM crowdfundingkickstarter.projects
GROUP BY country
ORDER BY total_projects DESC;

-- Total Number of Projects By Amount Raised-
SELECT 
    name AS project_name,
    state,
    (goal * static_usd_rate) AS amount_raised
FROM 
    crowdfundingkickstarter.projects
WHERE 
    state = 'successful'
    order by amount_raised desc;
    
     -- Total Number of Successful Projects By Backers --
SELECT 
    name AS project_name,
    state,
    backers_count
FROM 
    crowdfundingkickstarter.projects
WHERE 
    state = 'successful'
ORDER BY 
    backers_count DESC;
    
    -- Percentage of Successful Projects Overall --
SELECT 
    (COUNT(CASE WHEN state = 'successful' THEN 1 END) * 100.0 / COUNT(*)) AS success_percentage
FROM 
    crowdfundingkickstarter.projects;
    
  -- Percentage of Successful Projects by Goal Range --
SELECT 
    CASE 
        WHEN amount_raised < 5000 THEN 'less than 5000'
        WHEN amount_raised BETWEEN 5000 AND 20000 THEN '5000 to 20000'
        WHEN amount_raised BETWEEN 20000 AND 50000 THEN '20000 to 50000'
        WHEN amount_raised BETWEEN 50000 AND 100000 THEN '50000 to 100000'
        ELSE 'greater than 100000'
    END AS goal_range,
    COUNT(ProjectID) AS total_projects,
    COUNT(CASE WHEN state = 'successful' THEN 1 END) AS successful_projects,
    (COUNT(CASE WHEN state = 'successful' THEN 1 END) * 100.0 / COUNT(ProjectID)) AS success_percentage
FROM (
    SELECT 
        ProjectID,
        state,
        (goal * static_usd_rate) AS amount_raised
    FROM crowdfundingkickstarter.projects
) AS p
GROUP BY 
    goal_range
ORDER BY 
    success_percentage DESC;
    
-- Average Number of Days for Successful Projects --
SELECT 
    AVG(DATEDIFF(
        FROM_UNIXTIME(successful_at), 
        FROM_UNIXTIME(created_at)
    )) AS avg_project_duration_days
FROM 
    crowdfundingkickstarter.projects
WHERE 
    state = 'successful';
    
-- Total Number of Projects Based on Category --
SELECT c.name, COUNT(p.ProjectID) AS total_projects
FROM crowdfundingkickstarter.projects p
JOIN  `copy of crowdfunding_category`c ON p.category_id = c.id
GROUP BY c.name
ORDER BY total_projects DESC;

-- Percentage of successful projects by category
SELECT 
    c.name AS category_name,
    COUNT(p.ProjectID) AS total_projects,
    COUNT(CASE WHEN p.state = 'successful' THEN 1 END) AS successful_projects,
    (COUNT(CASE WHEN p.state = 'successful' THEN 1 END) * 100.0 / COUNT(p.ProjectID)) AS success_percentage
FROM 
    crowdfundingkickstarter.projects p
JOIN 
    `copy of crowdfunding_category` c 
    ON p.category_id = c.id
GROUP BY 
    c.name
ORDER BY 
    success_percentage DESC;





