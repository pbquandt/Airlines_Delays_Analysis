CREATE SCHEMA IF NOT EXISTS reporting;

CREATE OR REPLACE VIEW reporting.flight as
SELECT *
FROM flight
	WHERE cancelled = 0
;

CREATE OR REPLACE VIEW reporting.top_reliability_roads AS
SELECT 
    fi.origin_airport_id,
    fi.origin_airport_name,
    fi.dest_airport_id,
    fi.dest_airport_name,
    fi.year,
    COUNT(fi.route) AS cnt,
	ROUND(CAST(SUM(nas_delay) AS numeric) / CAST(COUNT(*) AS numeric), 2) AS reliability,
	DENSE_RANK() OVER (ORDER BY ROUND((SUM(nas_delay) / COUNT(fi.route))::numeric, 2)
 DESC) AS nb
FROM(
	SELECT 
		f.origin_airport_id,
		al.display_airport_name as origin_airport_name,
		f.dest_airport_id,
		al1.display_airport_name as dest_airport_name,
		f.year,
		f.nas_delay,
		al.display_airport_name || al1.display_airport_name AS route
	FROM flight as f
	LEFT JOIN airport_list as al on f.origin_airport_id = al.origin_airport_id
	LEFT JOIN airport_list as al1 on f.dest_airport_id = al1.origin_airport_id
	) as fi
GROUP BY 
    fi.origin_airport_id,
	fi.origin_airport_name,
    fi.dest_airport_id,
    fi.dest_airport_name,
    fi.year
HAVING COUNT(fi.route) > 10000
ORDER BY cnt DESC
;

CREATE OR REPLACE VIEW reporting.month_to_month_comparision AS
SELECT 
	f.year,
	f.month,
	count(*) as flights_amount,
	ROUND(CAST(SUM(nas_delay) AS numeric) / CAST(COUNT(*) AS numeric), 2) AS reliability
FROM flight as f
GROUP BY
	f.year,
	f.month
;

CREATE OR REPLACE VIEW reporting.day_to_day_comparision AS
SELECT 
	year,
	day_of_week,
	count(*) as flights_amount,
	ROUND(CAST(SUM(nas_delay) AS numeric) / CAST(COUNT(*) AS numeric), 2) AS reliability
FROM flight as f
GROUP BY
	year,
	day_of_week
;

CREATE OR REPLACE VIEW reporting.day_by_day_reliability AS
SELECT
	to_date(LPAD(year::text, 4, '0') || LPAD(month::text, 2, '0') || LPAD(day_of_month::text, 2, '0'), 'YYYYMMDD') AS date,
    year,
	(COUNT(CASE WHEN dep_delay_new > 0 THEN 1 END)::float / COUNT(*)) * 100 AS reliability
FROM
	flight
GROUP BY
	year, 
	month, 
	day_of_month
;