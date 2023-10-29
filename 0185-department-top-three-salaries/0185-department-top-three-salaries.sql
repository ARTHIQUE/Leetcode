with cte as(
    select *,
    dense_rank()over(partition by t.department order by t.salary desc) as rnk
    from(select d.name as department,e.name as employee,e.salary salary
         from employee e
        join department d
        on e.departmentid=d.id ) t

)
select c.department,c.employee,c.salary from cte c where rnk<4