USE employees;

select dept_name, CONCAT(e.first_name, ' ', e.last_name)
FROM dept_manager AS dm
JOIN employees AS e
    ON dm.emp_no = e.emp_no
JOIN departments AS d
    ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01'
    AND e.gender = 'F';

SELECT title, COUNT(title) from titles AS t
JOIN dept_emp AS de
    ON t.emp_no = de.emp_no
WHERE de.dept_no = 'd009'
    AND t.to_date = '9999-01-01'
    AND de.to_date = '9999-01-01'
GROUP BY title;
