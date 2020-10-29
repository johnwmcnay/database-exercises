USE employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
#
# 69 Rows
#
# Find all the titles held by all employees with the first name Aamod.
#
# 314 total titles, 6 unique titles
#
# Find all the current department managers that are female.

SELECT * from employees
WHERE hire_date = (
    SELECT hire_date FROM employees
    WHERE emp_no = 101010);

SELECT DISTINCT title FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod');

SELECT first_name, last_name FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date='9999-01-01')
  AND gender = 'F';