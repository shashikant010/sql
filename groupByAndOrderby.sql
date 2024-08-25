SELECT gender,AVG(age),MAX(age),MIN(age),COUNT(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name ASC;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY gender,age DESC;

#we can also do order by (column numbers )  [not preffered]


SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY 1,2 DESC;
