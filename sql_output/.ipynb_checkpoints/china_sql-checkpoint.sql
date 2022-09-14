select * from china_companies

-- Select top 25 companies from the table
select*
from(
    select*,
    dense_rank() over(order by sales desc) as rnk
    from china_companies
)x
where x.rnk between 1 and 25