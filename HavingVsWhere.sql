#where WHERE can not be used
SELECT gender,AVG(age)
FROM parks_and_recreation.employee_demographics
WHERE AVG(age)>40
GROUP BY gender
#wrong cause where can not be used here
#without WHERE

SELECT gender,AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender;

#instead of where we can use having after groupby for check
# having can only be used after group by and before aggregate function such as avg
SELECT gender,AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age)>40;


SELECT occupation , AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE "%manager%"
GROUP BY occupation
HAVING AVG(salary)>7500