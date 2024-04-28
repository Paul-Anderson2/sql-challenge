-- Question 8 List the frequency counts, in descending order, of all the employee last names
-- (that is, how many employees share each last name)

SELECT 
	last_name,
	COUNT(last_name) AS shared_last_name_frequency
FROM 
	employees
GROUP BY 
	last_name
ORDER BY 
	COUNT(last_name) DESC;
	







