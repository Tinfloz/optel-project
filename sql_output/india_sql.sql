select * from india_companies

-- Select the top 25 Indian companies
select*
from(
    select*,
    dense_rank() over(order by sales desc) as rnk
    from india_companies
)x
where x.rnk between 1 and 25