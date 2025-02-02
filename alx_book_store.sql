CREATE DATABASE alx_book_store;
USE alx_book_store;

CREATE TABLE Authors(
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(215)
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    FOREIGN KEY (author_id) REFERENCES Authors (author_id), 
    price DOUBLE,
    publication_date DATE
);

CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY,
    FOREIGN KEY (order_id) REFERENCES Orders (order_id),
    FOREIGN KEY (book_id) REFERENCES Books (book_id),
    quantity DOUBLE

)

CREATE TABLE Customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    c_address TEXT
);
CREATE TABLE Ordres(
    order_id  INT PRIMARY KEY,
    FOREIGN KEY (customer_id) REFERENCES Customers (customer_id),
    order_date DATE
);
Select * from Customers;