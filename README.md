## sql
# Employee Database Project:

In this research project, we investigated the employee data of a corporation from the 1980s and 1990s. The only available records from that era consist of six CSV files.

- Data Modeling
  To effectively manage and analyze the data, we designed appropriate tables to store the information extracted from the CSV files. Using SQL, we imported the CSV data into a relational database, allowing us to perform comprehensive data modeling, engineering, and analysis.

  Inspected the CSVs and sketched out an ERD of the tables using QuickDBD.

![ERD](https://github.com/Kanwalifti/Employee_Database_analysis_sql/blob/main/employeesql/QuickDBD-export.png)

- Data Engineering
  Throughout the project, we conducted data modeling to ensure the data was structured and organized in a meaningful manner. Subsequently, data engineering techniques were applied to efficiently handle and store the data within the SQL database.
  The task involved creating individual table schemas for all six CSV files, where data types, primary keys, foreign keys, and other constraints were specified.
  Following the schema design, we successfully imported each CSV file into its respective SQL table.

- Data Analysis
  Finally, we carried out data analysis, answering specific questions about the employee data to gain valuable insights into the workforce of the corporation during the specified time period. This encompassed exploring patterns, trends, and relationships within the dataset.

1. Employee Details: Listed the employee number, last name, first name, sex, and salary for each employee.

2. Hiring Details: Listed first name, last name, and hire date for employees hired in 1986.

3. Department Managers: Provided a list of department managers with details such as department number, department name, manager's employee number, last name, and first name.

4. Employee Departments: Listed the department of each employee with information including employee number, last name, first name, and department name.

5. Specific Employee Search: Listed first name, last name, and sex for employees with the first name "Hercules" and last names starting with "B."

6. Sales Department Employees: Listed all employees in the Sales department, including their employee number, last name, first name, and department name.

7. Sales and Development Department Employees: Listed all employees in the Sales and Development departments, providing details like employee number, last name, first name, and department name.

8. Last Name Frequency: Computed the frequency count of employee last names and presented the results in descending order, indicating how many employees share each last name.

   
Overall, the project involved a comprehensive approach to examine the employee database, incorporating data modeling, engineering, and analysis to extract valuable information from the available records.
