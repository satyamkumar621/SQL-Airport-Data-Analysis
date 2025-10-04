# 🛫 SQL Airport Data Analysis

## 📘 Project Overview
This project — **SQL Airport Data Analysis** — explores air travel data to uncover insights on passenger trends, flight routes, seat utilization, and population correlations.  
The analysis aims to help airlines optimize routes, improve seat capacity planning, and identify underutilized operations.

Using structured SQL queries, the project analyzes data from multiple tables such as airports, flight routes, and monthly statistics to derive data-driven insights.

---

## 🧩 Business Case
Airlines face challenges like:
- Low seat utilization on certain routes
- Seasonal fluctuations in travel demand
- Inefficient resource allocation and route planning

Through data analysis, this project helps identify:
- High-traffic vs. underutilized routes  
- Seasonal and year-over-year trends  
- Population-driven flight demand patterns  
- Opportunities for route and fleet optimization  

---

## 🗃️ Database Schema

**Database:** `Air_Travel`

| Table Name | Description |
|-------------|--------------|
| `Airport_Details` | Contains airport codes, city names, and populations |
| `Route_Details` | Stores origin and destination airport pairs with route distance |
| `MonthlyFlightStats` | Records monthly flights, passengers, and seats per route |

**Relationships:**
- `Route_Details` → `MonthlyFlightStats` via `route_id`
- `Airport_Details` → `Route_Details` via `airport_code`

---

## 🧮 Key SQL Analyses

1. **Total Passengers per Origin–Destination Pair**  
2. **Average Seat Utilization per Flight**  
3. **Top 5 Busiest Routes by Passenger Volume**  
4. **Total Flights and Passengers per City**  
5. **Total Distance Flown per Origin Airport**  
6. **Monthly & Yearly Trends**  
7. **Underutilized Routes (<70% utilization)**  
8. **Top Origin Airports by Flight Frequency**  
9. **Peak Traffic Month per City**  
10. **Correlation Between City Population and Passenger Count**  
11. **Year-over-Year Growth in Passenger Numbers**  
12. **Routes with Consistent Growth or Decline**

---

## 📈 Example Insights

- Los Angeles (LAX) and New York (JFK) show **highest passenger volumes**.  
- Bend (RDM) experiences **seasonal traffic spikes**, especially during summer months.  
- Several routes operate below **70% utilization**, signaling optimization opportunities.  
- **Positive correlation** observed between city population and passenger flow.  

---

## 🧠 Skills & Concepts Applied

- SQL Joins and Subqueries  
- Aggregate Functions (`SUM`, `AVG`, `ROUND`)  
- Window Functions (`LAG`, `ROW_NUMBER`)  
- CTEs (Common Table Expressions)  
- Correlation Formula using SQL  
- Year-over-Year (YoY) Growth Analysis  

---

## 🛠️ Tools Used
- **MySQL** for database creation and analysis  
- **VS Code / MySQL Workbench** for execution  
- **Excel / Power BI (optional)** for data visualization  

---

## 🚀 How to Run

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/SQL-Airport-Data-Analysis.git
   cd SQL-Airport-Data-Analysis

2. Open your MySQL client or workbench.

3. Run the SQL script:
   source Airport_Data_Analysis.sql;

4. Explore insights by running individual queries.

🧾 Output Examples

| Query                      | Insight Example                                         |
| -------------------------- | ------------------------------------------------------- |
| Total Passengers per Route | LAX → JFK has 180,000 passengers                        |
| Avg. Seat Utilization      | 82.5% on average                                        |
| Underutilized Routes       | SFO → RDM operates at 65% capacity                      |
| Population Correlation     | 0.84 correlation coefficient (strong positive relation) |

🧑‍💻 Author

  Satyam Kumar
  Aspiring Data Scientist | SQL & Data Analytics Enthusiast
  📫 LinkedIn | GitHub

⭐ Acknowledgements

This project is inspired by real-world aviation data analysis problems and created to demonstrate SQL proficiency in:

. Data Modeling

. Query Optimization

. Business Insight Generation
