SELECT p.firstname, p.lastname, 
       (SELECT city FROM address a WHERE p.personid = a.personid) AS city,
       (SELECT state FROM address a WHERE p.personid = a.personid) AS state
FROM person p;
