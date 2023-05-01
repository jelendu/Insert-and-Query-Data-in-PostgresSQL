-- Add 3 new artists to the artist table. (It already exists.)

insert into artists(artist_name)
values ('Doja Cat'),
       ('Bob Marley'),
       ('Eminem');

-- Select 10 artists in reverse alphabetical order.

select artist_name 
from artists 
order by artist_name
desc limit 10;

-- Select 5 artists in alphabetical order.

select artist_name
from artists
order by artist_name
asc limit 5;

-- Select all artists that start with the word ‘Black’.

select artist_name 
from artists 
where artist_name 
like 'Black%';

-- Select all artists that contain the word ‘Black’.

select artist_name 
from artists 
where artist_name 
like '%Black%';
