USE employees;

# Update your queries for employees whose names start and end with 'E'. Use concat()
# to combine their first and last name together as a single column in your results.
#


SELECT * FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
  AND gender = 'M'
ORDER BY last_name DESC, first_name DESC;
# WHERE first_name IN ('Irena', 'Vidya', 'Maya');


SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIkE 'E%e'
ORDER BY emp_no DESC;
# WHERE last_name LIkE 'E%'
#    OR last_name LIKE '%E';

# WHERE last_name LIKE 'E%';

SELECT DATEDIFF(CURRENT_DATE(), hire_date)
FROM employees
WHERE (hire_date BETWEEN '1990-01-01' AND '1999-12-31')
  AND birth_date LIKE '%12-25'
ORDER BY birth_date, hire_date DESC;

# For your query of employees born on Christmas and hired in the 90s, use datediff()
# to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())

# SELECT *
# FROM employees
# WHERE birth_date LIKE '%12-25';

SELECT *
FROM employees
WHERE (last_name LIKE '%q%')
  AND last_name NOT LIKE '%qu%';

# WHERE last_name LIKE '%q%';
