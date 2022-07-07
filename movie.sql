CREATE TABLE IF NOT EXISTS customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR (255),
    last_name VARCHAR (255),
    address VARCHAR (255),
    phone_number VARCHAR(255)
);
SELECT * FROM customer
-- Create movie table
CREATE TABLE IF NOT EXISTS movie (
    movie_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    genre VARCHAR (255),
    movie_time TIME,
    movie_date DATE, 
    price FLOAT
);

--Create ticket table
CREATE TABLE IF NOT EXISTS ticket (
    ticket_id SERIAL PRIMARY KEY,
    movie_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    price FLOAT,
    movie_time TIME,
    movie_date DATE,
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- Create concession table
CREATE TABLE IF NOT EXISTS concession (
    concession_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    price FLOAT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);