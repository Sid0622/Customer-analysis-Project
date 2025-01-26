create view vw_ChurnData as
    select * from prod_Churn where Customer_Status in ('Churned','Stayed')

create view vw_JoinData as 
    select * from prod_Churn where Customer_Status = 'Joined'
