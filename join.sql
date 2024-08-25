#by default JOIN means INNER JOIN
SELECT * 
FROM employee_demographics INNER JOIN employee_salary


SELECT * 
FROM employee_demographics JOIN employee_salary

SELECT * 
FROM employee_demographics 
JOIN employee_salary
    ON employee_demographics.employee_id=employee_salary.employee_id ;


SELECT *
FROM employee_demographics as dem
join employee_salary as sal
    ON dem.employee_id = sal.employee_id;

SELECT dem.employee_id , age,occupation
FROM employee_demographics as dem
join employee_salary as sal
    ON dem.employee_id = sal.employee_id



SELECT *
FROM employee_demographics as dem
LEFT join employee_salary as sal
    ON dem.employee_id = sal.employee_id

SELECT *
FROM employee_demographics as dem
RIGHT join employee_salary as sal
    ON dem.employee_id = sal.employee_id



#self join use case
SELECT * 
FROM employee_salary emp1
join employee_salary emp2
ON emp1.employee_id+1 = emp2.employee_id

SELECT emp1.employee_id as Santa_ID , emp1.first_name as Santa_Name,
    emp2.employee_id as Employee_ID ,emp2.first_name as Employee_Name
FROM employee_salary emp1
join employee_salary emp2
ON emp1.employee_id+1 = emp2.employee_id ;



#joining multiple table
SELECT *
FROM employee_demographics as dem
INNER join employee_salary as sal
    ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments as pd
ON  sal.dept_id=pd.department_name;
