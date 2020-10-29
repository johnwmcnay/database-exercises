USE employees;

select dept_name, CONCAT(e.first_name, ' ', e.last_name)
FROM dept_manager AS dm
JOIN employees AS e
    ON dm.emp_no = e.emp_no
JOIN departments AS d
    ON dm.dept_no = d.dept_no
WHERE dm.to_date = '9999-01-01';

