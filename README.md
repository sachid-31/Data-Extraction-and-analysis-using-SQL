SQL Data Analysis Project – HR and Sales Insights
This project is a comprehensive SQL-based data analysis solution designed to extract meaningful business insights from the AdventureWorks database. The queries span multiple departments such as Human Resources, Sales, and Production. The main objective is to explore employee salary patterns, hiring trends, departmental performance, and customer transactions, using both direct SQL queries and views.

🔍 Descriptions of Operations Performed
1. Employee Records
The project begins by retrieving complete information about all employees. This serves as a reference point for other employee-related operations, especially those concerning salary, hire dates, and department mapping.

2. Third Highest Salary
To understand salary distribution among employees, a nested subquery is used to extract the third-highest salary from the pay history. This is useful for identifying top-tier earners excluding the absolute highest ones.

3. First and Last Employee Hires
The earliest and most recent hiring dates are extracted from the HR database. These help analyze company growth timelines and hiring trends over the years.

4. Most Recent Customer Transaction
For every customer, the latest order date is calculated to understand customer engagement and recent activity. This can assist the sales team in targeting or re-engaging clients.

5. Department-wise Salary Summation (VIEW1)
A view is created to identify departments whose combined salary rate exceeds a specific threshold (e.g., 300). This helps track high-expense departments and budget allocation.

6. Running Total of Orders by Customer
A summary of total dues is generated per customer, per order date, sorted chronologically. This reveals customer spending patterns and how orders accumulate over time.

7. Hiring Analysis by Month and Year
The number of employees hired per month and year is computed to determine seasonal hiring trends. It is valuable for HR departments in planning recruitment cycles.

8. Employees Earning Above Department Average (VIEW2)
This view lists all employees who earn more than the average salary of their respective departments. It highlights high performers and helps in evaluating salary fairness or potential promotions.

9. Second Lowest Salary
A subquery is used to fetch the second-lowest salary, which is important for spotting entry-level compensation without considering the absolute minimum (which might be an anomaly).

10. Unordered Products
Products that have never been sold are identified using a left join between the product catalog and sales records. This is essential for inventory management and marketing unlisted or overlooked items.

11. Employees Hired in Same Month & Year (VIEW4)
A view is created to list employees who joined in a specific month and year. This could be useful in recognizing batch hires or organizing work anniversaries and team-building programs.

12. Employees Older Than Department Average Age (VIEW5)
This view determines employees who are older than the average age of their department peers. It helps understand department demographics and can aid in succession planning or retirement tracking.

🧾 Summary
This SQL project showcases the use of:

Aggregation (SUM, AVG, COUNT)

Subqueries and nested logic

Date functions for time-based grouping

Views for reusable logic

Joins (Inner, Left Outer) for multi-table analysis

Filtering based on comparative conditions (e.g., greater than average)

Each part of the script serves a specific business purpose and contributes to better decision-making, performance evaluation, and data-driven strategy across departments.

