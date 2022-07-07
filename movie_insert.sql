--Adding data to the database
select * from movie
--Create a new customer
INSERT INTO customer (
    customer_id,
    first_name,
    last_name,
    address,
    phone_number
)VALUES(
1,
'Michael',
'Jones',
'1234 moms',
'444444444');

--Create a new movie
INSERT INTO movie (
    movie_id,
    customer_id,
    genre, 
    movie_time,
    movie_date,
    price)VALUES(
        1,
        1,
    'action',
     '13:30',
        '3-13-2022',
        7.99
    );
-- Create a new ticket
select * from ticket
INSERT INTO ticket (
    ticket_id,
    movie_id,
    customer_id,
    price,
    movie_time,
    movie_date)
    VALUES(
    1,
    1,
    1,
    7.99,
    '13:30',
    '3-13-2022')
--Create a new concession
select * from concession
INSERT INTO concession (
    concession_id,
    customer_id,
    price
)VALUES(
1,
1,
3.99);