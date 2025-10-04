create database Air_Travel;
create table Airport_Details(
airport_code VARCHAR(10),
city VARCHAR(50),
population int
);

INSERT INTO Airport_Details(airport_code,city,population)
VALUES
('LAX', 'Los Angeles, CA', 3976322),
('SFO', 'San Francisco, CA', 873965),
('RDM', 'Bend, OR', 105118),
('PDX', 'Portland, OR', 654741),
('JFK', 'New York, NY', 8336817);

create table Route_details(
route_id int not null primary key, 
origin_airport varchar(10), 
destination_airport varchar(10), 
distance int not null
);

INSERT INTO Route_details(route_id,origin_airport,destination_airport,distance)
VALUES
(1, 'LAX', 'SFO', 337),
(2, 'SFO', 'LAX', 337),
(3, 'PDX', 'RDM', 116),
(4, 'SFO', 'RDM', 462),
(5, 'LAX', 'JFK', 2475),
(6, 'JFK', 'LAX', 2475);

create table MonthlyFlightStats(
stat_id int not null primary key,
route_id int not null,
fly_date date not null,
flights int not null,
passengers int not null,
seats int not null
);

INSERT INTO MonthlyFlightStats(stat_id,route_id,fly_date,flights,passengers,seats)
VALUES
(1, 1, '2000-01-01', 100, 15000, 20000),
(2, 1, '2000-02-01', 100, 15000, 20000),
(3, 1, '2000-03-01', 100, 15000, 20000),
(4, 1, '2000-06-01', 120, 18000, 24000),
(5, 1, '2000-07-01', 130, 19500, 26000),
(6, 1, '2000-08-01', 130, 19500, 26000),
(7, 1, '2001-01-01', 110, 16500, 22000),
(8, 1, '2001-02-01', 110, 16500, 22000),
(9, 1, '2001-03-01', 110, 16500, 22000),
(10, 1, '2001-06-01', 132, 19800, 26400),
(11, 1, '2001-07-01', 143, 21450, 28600),
(12, 1, '2001-08-01', 143, 21450, 28600),
(13, 1, '2002-01-01', 120, 18000, 24000),
(14, 1, '2002-02-01', 120, 18000, 24000),
(15, 1, '2002-03-01', 120, 18000, 24000),
(16, 1, '2002-06-01', 145, 21750, 29000),
(17, 1, '2002-07-01', 157, 23550, 31400),
(18, 1, '2002-08-01', 157, 23550, 31400),
(19, 2, '2000-01-01', 100, 15000, 20000),
(20, 2, '2000-02-01', 100, 15000, 20000),
(21, 2, '2000-03-01', 100, 15000, 20000),
(22, 2, '2000-06-01', 120, 18000, 24000),
(23, 2, '2000-07-01', 130, 19500, 26000),
(24, 2, '2000-08-01', 130, 19500, 26000),
(25, 2, '2001-01-01', 110, 16500, 22000),
(26, 2, '2001-02-01', 110, 16500, 22000),
(27, 2, '2001-03-01', 110, 16500, 22000),
(28, 2, '2001-06-01', 132, 19800, 26400),
(29, 2, '2001-07-01', 143, 21450, 28600),
(30, 2, '2001-08-01', 143, 21450, 28600),
(31, 2, '2002-01-01', 120, 18000, 24000),
(32, 2, '2002-02-01', 120, 18000, 24000),
(33, 2, '2002-03-01', 120, 18000, 24000),
(34, 2, '2002-06-01', 145, 21750, 29000),
(35, 2, '2002-07-01', 157, 23550, 31400),
(36, 2, '2002-08-01', 157, 23550, 31400),
(37, 3, '2000-01-01', 60, 6000, 9000),
(38, 3, '2000-02-01', 60, 6000, 9000),
(39, 3, '2000-03-01', 60, 6000, 9000),
(40, 3, '2001-01-01', 65, 6500, 9750),
(41, 3, '2001-02-01', 65, 6500, 9750),
(42, 3, '2001-03-01', 65, 6500, 9750),
(43, 3, '2002-01-01', 70, 7000, 10500),
(44, 3, '2002-02-01', 70, 7000, 10500),
(45, 3, '2002-03-01', 70, 7000, 10500),
(46, 4, '2000-01-01', 30, 3000, 4500),
(47, 4, '2000-02-01', 30, 3000, 4500),
(48, 4, '2000-03-01', 30, 3000, 4500),
(49, 4, '2001-01-01', 32, 3200, 4800),
(50, 4, '2001-02-01', 32, 3200, 4800),
(51, 4, '2001-03-01', 32, 3200, 4800),
(52, 4, '2002-01-01', 35, 3500, 5250),
(53, 4, '2002-02-01', 35, 3500, 5250),
(54, 4, '2002-03-01', 35, 3500, 5250),
(55, 5, '2000-01-01', 50, 5000, 12500),
(56, 5, '2000-02-01', 50, 5000, 12500),
(57, 5, '2000-03-01', 50, 5000, 12500),
(58, 5, '2001-01-01', 40, 4000, 10000),
(59, 5, '2001-02-01', 40, 4000, 10000),
(60, 5, '2001-03-01', 40, 4000, 10000),
(61, 5, '2002-01-01', 30, 3000, 7500),
(62, 5, '2002-02-01', 30, 3000, 7500),
(63, 5, '2002-03-01', 30, 3000, 7500),
(64, 6, '2000-01-01', 50, 5000, 12500),
(65, 6, '2000-02-01', 50, 5000, 12500),
(66, 6, '2000-03-01', 50, 5000, 12500),
(67, 6, '2001-01-01', 40, 4000, 10000),
(68, 6, '2001-02-01', 40, 4000, 10000),
(69, 6, '2001-03-01', 40, 4000, 10000),
(70, 6, '2002-01-01', 30, 3000, 7500),
(71, 6, '2002-02-01', 30, 3000, 7500),
(72, 6, '2002-03-01', 30, 3000, 7500);

# 1. Total Passengers per Origin-Destination Pair

SELECT r.origin_airport,r.destination_airport,SUM(m.passengers) AS total_passengers
FROM route_details r
JOIN monthlyflightstats m ON r.route_id = m.route_id
GROUP BY r.origin_airport, r.destination_airport
ORDER BY total_passengers DESC;

# 2. Average Seat Utilization per Flight

SELECT r.origin_airport,r.destination_airport,
ROUND(SUM(m.passengers) * 1.0 / SUM(m.seats), 2) AS avg_seat_utilization
FROM route_details r
JOIN monthlyflightstats m ON r.route_id = m.route_id
GROUP BY r.origin_airport, r.destination_airport
ORDER BY avg_seat_utilization DESC;

# 3. Top 5 Origin-Destination Airport Pairs by Passenger Volume

SELECT r.origin_airport, r.destination_airport, SUM(m.passengers) AS total_passengers
FROM route_details r
JOIN monthlyflightstats m ON r.route_id = m.route_id
GROUP BY r.origin_airport, r.destination_airport
ORDER BY total_passengers DESC
LIMIT 5;

# 4. Total Flights and Passengers per Origin City

SELECT a.city AS origin_city, SUM(m.flights) AS total_flights,
SUM(m.passengers) AS total_passengers FROM route_details r
JOIN monthlyflightstats m ON r.route_id = m.route_id
JOIN airport_details a ON r.origin_airport = a.airport_code
GROUP BY a.city
ORDER BY total_passengers DESC;

# 5. Total Distance Flown per Origin Airport

SELECT r.origin_airport, SUM(m.flights * r.distance) AS total_distance_flown
FROM route_details r
JOIN monthlyflightstats m ON r.route_id = m.route_id
GROUP BY r.origin_airport
ORDER BY total_distance_flown DESC;

# 6. Monthly Flight Analysis

SELECT DATE_FORMAT(m.fly_date, '%Y-%m') AS month, SUM(m.flights) AS total_flights,
SUM(m.passengers) AS total_passengers, SUM(m.seats) AS total_seats
FROM monthlyflightstats m
GROUP BY DATE_FORMAT(m.fly_date, '%Y-%m')
ORDER BY month;

# 7. Underutilized Routes Analysis

SELECT r.origin_airport, r.destination_airport, SUM(m.passengers) AS total_passengers,
SUM(m.seats) AS total_seats,
ROUND(SUM(m.passengers) * 100.0 / SUM(m.seats), 2) AS utilization_percent 
FROM route_details r
JOIN monthlyflightstats m ON r.route_id = m.route_id
GROUP BY r.origin_airport, r.destination_airport
HAVING utilization_percent < 70
ORDER BY utilization_percent ASC;

# 8. Top 3 Origin Airports by Flight Frequency

SELECT r.origin_airport, SUM(m.flights) AS total_flights
FROM route_details r
JOIN monthlyflightstats m ON r.route_id = m.route_id
GROUP BY r.origin_airport
ORDER BY total_flights DESC
LIMIT 3;

# 9. City Sending the Most Flights and Passengers to Bend, OR (Excluding Bend, OR)

SELECT a.city AS origin_city, SUM(m.flights) AS total_flights,
SUM(m.passengers) AS total_passengers FROM route_details r
JOIN monthlyflightstats m ON r.route_id = m.route_id
JOIN airport_details a ON r.origin_airport = a.airport_code
WHERE r.destination_airport = 'RDM' AND r.origin_airport <> 'RDM'
GROUP BY a.city
ORDER BY total_passengers DESC
LIMIT 1;

# 10. Longest Flight Route

SELECT r.origin_airport, r.destination_airport, r.distance
FROM route_details r
ORDER BY r.distance DESC
LIMIT 1;

# 11. Most and Least Busy Months by Flight Count

-- Find total flights per month
WITH monthly AS (
    SELECT DATE_FORMAT(m.fly_date, '%Y-%m') AS month, SUM(m.flights) AS total_flights
    FROM monthlyflightstats m
    GROUP BY DATE_FORMAT(m.fly_date, '%Y-%m')
)
-- Get most and least busy
SELECT 
    (SELECT month FROM monthly ORDER BY total_flights DESC LIMIT 1) AS most_busy_month,
    (SELECT total_flights FROM monthly ORDER BY total_flights DESC LIMIT 1) AS most_busy_flights,
    (SELECT month FROM monthly ORDER BY total_flights ASC LIMIT 1) AS least_busy_month,
    (SELECT total_flights FROM monthly ORDER BY total_flights ASC LIMIT 1) AS least_busy_flights;

# 12. Year-over-Year Percentage Growth in Passenger Numbers for Each Origin-Destination Pair

SELECT r.origin_airport, r.destination_airport, YEAR(m.fly_date) AS year,
SUM(m.passengers) AS total_passengers,
LAG(SUM(m.passengers)) OVER (PARTITION BY r.origin_airport, r.destination_airport 
ORDER BY YEAR(m.fly_date)) AS prev_year_passengers, ROUND(( (SUM(m.passengers) - 
LAG(SUM(m.passengers)) OVER (PARTITION BY r.origin_airport, r.destination_airport 
ORDER BY YEAR(m.fly_date))) / LAG(SUM(m.passengers)) 
OVER (PARTITION BY r.origin_airport, r.destination_airport ORDER BY YEAR(m.fly_date)) * 100 )
, 2) AS yoy_growth_percent FROM route_details r
JOIN monthlyflightstats m ON r.route_id = m.route_id
GROUP BY r.origin_airport, r.destination_airport, YEAR(m.fly_date)
ORDER BY r.origin_airport, r.destination_airport, year;

# 13. Routes with Consistent Year-over-Year Growth in Flight Numbers

SELECT origin_airport, destination_airport
FROM (SELECT r.origin_airport, r.destination_airport, YEAR(m.fly_date) AS year,
	SUM(m.flights) AS total_flights, LAG(SUM(m.flights)) OVER (
    PARTITION BY r.origin_airport, r.destination_airport ORDER BY YEAR(m.fly_date)
    ) AS prev_year_flights FROM route_details r
    JOIN monthlyflightstats m ON r.route_id = m.route_id
    GROUP BY r.origin_airport, r.destination_airport, YEAR(m.fly_date)
) yearly_stats
GROUP BY origin_airport, destination_airport
HAVING MIN(total_flights - prev_year_flights) > 0;

# 14. Top 3 Origin Airports with Highest Weighted Passenger-to-Seats Utilization Ratio

SELECT r.origin_airport, SUM(m.passengers) AS total_passengers, SUM(m.seats) AS total_seats,
ROUND(SUM(m.passengers) * 1.0 / SUM(m.seats), 3) AS utilization_ratio
FROM route_details r
JOIN monthlyflightstats m ON r.route_id = m.route_id
GROUP BY r.origin_airport
ORDER BY utilization_ratio DESC
LIMIT 3;

# 15. Peak Traffic Month for Each Origin City

SELECT origin_city, month, total_passengers
FROM (SELECT a.city AS origin_city, DATE_FORMAT(m.fly_date, '%Y-%m') AS month,
	SUM(m.passengers) AS total_passengers,ROW_NUMBER() OVER (PARTITION BY a.city 
	ORDER BY SUM(m.passengers) DESC) AS rn FROM route_details r
    JOIN monthlyflightstats m ON r.route_id = m.route_id
    JOIN airport_details a ON r.origin_airport = a.airport_code
    GROUP BY a.city, DATE_FORMAT(m.fly_date, '%Y-%m')
) ranked
WHERE rn = 1;

# 16. Routes with Largest Decline in Passenger Numbers Year-over-Year

SELECT origin_airport, destination_airport, year, total_passengers, prev_year_passengers,
(prev_year_passengers - total_passengers) AS decline_passengers
FROM (
    SELECT r.origin_airport, r.destination_airport, YEAR(m.fly_date) AS year,
	SUM(m.passengers) AS total_passengers, LAG(SUM(m.passengers)) OVER (
	PARTITION BY r.origin_airport, r.destination_airport ORDER BY YEAR(m.fly_date)
	) AS prev_year_passengers FROM route_details r
    JOIN monthlyflightstats m ON r.route_id = m.route_id
    GROUP BY r.origin_airport, r.destination_airport, YEAR(m.fly_date)
) yearly_stats
WHERE prev_year_passengers IS NOT NULL
ORDER BY decline_passengers DESC
LIMIT 5;

# 17. Underperforming Routes with Low Seat Utilization

SELECT r.origin_airport, r.destination_airport, SUM(m.passengers) AS total_passengers,
SUM(m.seats) AS total_seats,
ROUND(SUM(m.passengers) / SUM(m.seats) * 100, 2) AS utilization_percent
FROM route_details r
JOIN monthlyflightstats m ON r.route_id = m.route_id
GROUP BY r.origin_airport, r.destination_airport
HAVING utilization_percent < 70
ORDER BY utilization_percent ASC;

# 18. Routes with Longest Average Flight Distance

SELECT r.origin_airport, r.destination_airport,
ROUND(SUM(r.distance * m.flights) / SUM(m.flights), 2) AS avg_distance
FROM route_details r
JOIN monthlyflightstats m ON r.route_id = m.route_id
GROUP BY r.origin_airport, r.destination_airport
ORDER BY avg_distance DESC
LIMIT 5;

# 19. Annual Trends in Air Travel

SELECT 
    YEAR(fly_date) AS year,
    SUM(flights) AS total_flights,
    SUM(passengers) AS total_passengers,
    SUM(seats) AS total_seats,
    ROUND(SUM(passengers) / SUM(seats) * 100, 2) AS avg_seat_utilization
FROM monthlyflightstats
GROUP BY YEAR(fly_date)
ORDER BY year;

# 20. Top 3 Busiest Routes Based on Total Distance Flown

SELECT 
    r.origin_airport,
    r.destination_airport,
    SUM(m.flights * r.distance) AS total_distance_flown
FROM route_details r
JOIN monthlyflightstats m ON r.route_id = m.route_id
GROUP BY r.origin_airport, r.destination_airport
ORDER BY total_distance_flown DESC
LIMIT 3;

# 21. Correlation Between Origin City Population and Total Passengers

SELECT 
    (COUNT(*) * SUM(a.population * cp.total_passengers) - SUM(a.population) * SUM(cp.total_passengers)) /
    (SQRT(COUNT(*) * SUM(a.population * a.population) - SUM(a.population) * SUM(a.population)) *
     SQRT(COUNT(*) * SUM(cp.total_passengers * cp.total_passengers) - SUM(cp.total_passengers) * SUM(cp.total_passengers))
    ) AS population_passenger_corr
FROM airport_details a
JOIN (
    SELECT r.origin_airport, SUM(m.passengers) AS total_passengers
    FROM route_details r
    JOIN monthlyflightstats m ON r.route_id = m.route_id
    GROUP BY r.origin_airport
) cp
ON a.airport_code = cp.origin_airport;

# 22. Origin Cities with Highest Flight Frequency Per Capita

SELECT 
    a.city AS origin_city,
    SUM(m.flights) AS total_flights,
    a.population,
    ROUND(SUM(m.flights) / a.population, 6) AS flights_per_capita
FROM airport_details a
JOIN route_details r ON a.airport_code = r.origin_airport
JOIN monthlyflightstats m ON r.route_id = m.route_id
GROUP BY a.city, a.population
ORDER BY flights_per_capita DESC
LIMIT 5;

# 23. Average Seat Utilization for High vs. Low Population Cities

SELECT 
    CASE 
        WHEN a.population >= 1000000 THEN 'High Population'
        ELSE 'Low Population'
    END AS city_group,
    ROUND(SUM(m.passengers) / SUM(m.seats) * 100, 2) AS avg_seat_utilization
FROM airport_details a
JOIN route_details r ON a.airport_code = r.origin_airport
JOIN monthlyflightstats m ON r.route_id = m.route_id
GROUP BY city_group;
