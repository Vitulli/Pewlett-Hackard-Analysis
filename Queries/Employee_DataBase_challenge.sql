--Retrieve the emp_no, first_name, and last_name columns from the Employees table. Steps (1-7).
SELECT e.emp_no, 
	e.first_name,
	e.second_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no


-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;


-- Use Dictinct with Orderby to remove duplicate rows. Steps 8 - 15
SELECT DISTINCT ON (emp_no)
	emp_no,
	first_name,
	second_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no ASC;


--Steps 16 - 22
SELECT COUNT(title),
	title	
INTO retiring_titles	
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

--Dev 2

SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.first_name,
	e.second_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligigbilty
FROM employees as e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN titles as t
ON e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;
