
--Number of Contents by Year

select year, count(*) as content_count
from netflix_data
group by year
order by 1;

--Distribution by Content Type

select "Movie / TV Show", count(*)  as count from netflix_data
group by "Movie / TV Show" ;

--Top 10 Most Common Netflix Genres

select "Main Types",
       count(*) as count
from netflix_data
where "Main Types" is not null
group by "Main Types"
order by count desc
limit 10;

-- Movie & TV Show Count by Top 10 Countries

select country,
       count(*) as content_count
from netflix_data
group by country
order by content_count desc
limit 10;


-- Annual Distribution Analysis by Types

select
    year,
    "Main Types",
    count(*) as content_count
from netflix_data
where "Main Types" is not null
group by 1,2
order by 1 asc;


