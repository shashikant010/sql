#limit can be used like LIMIT (how many results to show) or LIMIT (how many result to leave) (after that how many to show)


SELECT * 
FROM employee_demographics
ORDER BY gender,age
LIMIT 2 ;

SELECT * 
FROM employee_demographics
ORDER BY gender,age
LIMIT 2,1 ;

#Aliasing can be used to change the name of the columns

SELECT gender , AVG(age) AS avgAge
FROM employee_demographics
GROUP BY gender
HAVING avgAge>40

#we can also not use AS it will still work
SELECT gender , AVG(age) avgAge
FROM employee_demographics
GROUP BY gender
HAVING avgAge>40
