SELECT * FROM parks_and_recreation.employee_demographics

SELECT gender,first_name,last_name FROM parks_and_recreation.employee_demographics

SELECT first_name,
last_name,
birth_date,
age,
age+10
FROM parks_and_recreation.employee_demographics;

Select * FROM parks_and_recreation.employee_demographics WHERE first_name="Leslie";


select * from parks_and_recreation.employee_salary where salary>5000;
select * from parks_and_recreation.employee_demographics where gender="Female";
select * from parks_and_recreation.employee_demographics where gender!="Female";

select * from parks_and_recreation.employee_demographics where birth_date>"1965-01-01";



#This is a commentz
--also commentx

--LOGICAL OPERATORS : AND NOT OR--

select * from parks_and_recreation.employee_demographics where birth_date>"1965-01-01" AND gender="Female";
select * from parks_and_recreation.employee_demographics where birth_date>"1965-01-01" or gender="Female";
select * from parks_and_recreation.employee_demographics where birth_date>"1965-01-01" or not gender="Female";
select * from parks_and_recreation.employee_demographics where (first_name="Leslie" AND age=44 ) OR age<44;

#LIKE STATEMENT % AND _
# % : means any number of characters in place
# _ : number of underscore = number of character in place

Select * FROM parks_and_recreation.employee_demographics WHERE first_name LIKE "jer%";
Select * FROM parks_and_recreation.employee_demographics WHERE first_name LIKE "%er%";

#to get all names starting from a
Select * FROM parks_and_recreation.employee_demographics WHERE first_name LIKE "a%";

# for exactly two character after a in name
Select * FROM parks_and_recreation.employee_demographics WHERE first_name LIKE "a__";
Select * FROM parks_and_recreation.employee_demographics WHERE birth_date LIKE "1988%";

