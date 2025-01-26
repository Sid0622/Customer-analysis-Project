select Gender, count(Gender) as TotalCount,
count(Gender) * 100.0 /(select count(*) from Stg_churn) as percentage
from Stg_churn
group by Gender

SELECT Contract, Count(Contract) as TotalCount,
Count(Contract) * 1.0 / (Select Count(*) from Stg_churn)  as Percentage
from Stg_churn
Group by Contract

SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from Stg_churn) * 100  as RevPercentage
from Stg_churn
Group by Customer_Status

SELECT State, Count(State) as TotalCount,
Count(State) * 100.0 / (Select Count(*) from Stg_churn)  as Percentage
from Stg_churn
Group by State
Order by Percentage desc

select distinct Internet_Type
from Stg_churn