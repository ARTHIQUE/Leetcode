select id,case when P_id is null then 'Root'
               when id in (select p_id from tree) then 'Inner'
               else 'Leaf' end as type
               from Tree;