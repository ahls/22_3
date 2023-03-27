--1
 select * from owners o full join vehicles v on v.owner_id = o.id;

--2
SELECT o.first_name, o.last_name, COUNT(*) FROM owners o 
JOIN vehicles v on v.owner_id = o.id
GROUP BY o.id
ORDER BY o.first_name asc;

--3
SELECT o.first_name, o.last_name, ROUND(AVG(v.price)) AS average_price, COUNT(*) FROM owners o 
JOIN vehicles v on v.owner_id = o.id
GROUP BY o.id
HAVING COUNT(*) > 1 AND
    AVG(v.price) > 10000
ORDER BY o.first_name desc;