SELECT c.name, 
    ROUND(((2*s.math + 3*s.specific + 5*s.project_plan)/10),2) as avg
FROM candidate c
INNER JOIN score s on c.id = s.candidate_id
ORDER BY avg DESC