CREATE TABLE melons (
  id SERIAL PRIMARY KEY,
  melon_type VARCHAR(30),
  name VARCHAR (30),
  price FLOAT,
  seedless BOOLEAN
);

INSERT INTO melons (melon_type, name, price, seedless)
VALUES ('Musk', 'Honeydew', 1, False);

INSERT INTO melons(melon_type, name, price, seedless)
VALUES('Musk', 'Casaba', 2.5, False),
        ('Musk', 'Cantaloupe', 0.99, False),
        ('Musk', 'Persian Melon', 3, False),
        ('Musk', 'Christmas Melon', 5.5, False),
        ('Musk', 'Armenian Cucumber', 4.5, False),
        ('Hybrid', 'Galia', 3.75, False),
        ('Winter', 'Winter Melon', 0.99, True),
        ('Musk', 'Canary', 1.5, False),
        ('Musk', 'Hami', 2.75, True),
        ('Watermelon', 'Densuke', 250, False),
        ('Watermelon', 'Ali Baba', 2.5, False),
        ('Watermelon', 'Ancient', 3, False),
        ('Watermelon', 'Arkansas Black', 4, False),
        ('Watermelon', 'Dixie Queen', 2, False),
        ('Watermelon', 'Blacktail Mountain', 2.75, True),
        ('Watermelon', 'Carolina Cross 180', 4.25, False),
        ('Watermelon', 'Charleston Gray', 2, False),
        ('Watermelon', 'Chris Cross', 2.5, False),
        ('Watermelon', 'Desert King', 2, False),
        ('Watermelon', 'Congo', 2, False),
        ('Watermelon', 'Crimson Sweet', 1.75, False);


SELECT name FROM melons
WHERE melon_type = 'Watermelon'
AND seedless = True;


SELECT melon_type, COUNT(*)
FROM melons
GROUP BY melon_type
ORDER BY count;


SELECT seedless, COUNT(seedless), AVG(price)
FROM melons
GROUP BY seedless;


select * from melons
where melon_type <> 'Watermelon'
order by name, price 


select * from melons
offset 5
limit 5;


update melons
set seedless = true
where name = 'Galia';


update melons
set seedless = true
where id = 12;


delete from melons
where id < 3;


delete from melons
where id = 4;


SELECT * FROM melons;