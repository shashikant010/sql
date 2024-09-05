SELECT first_name,last_name,age,
CASE 
    WHEN age <=30 THEN "Young" 
    WHEN age BETWEEN 30 AND 50 THEN "old"
END AS age_Bracket
FROM employee_demographics;


SELECT first_name,salary,
CASE 
    WHEN salary<20000 THEN  salary+0.2*salary  
    WHEN 20000<salary<50000 THEN  salary+0.3*salary  
    WHEN 50000<salary THEN  salary+0.3*salary   
END as new_salary
FROM employee_salary;