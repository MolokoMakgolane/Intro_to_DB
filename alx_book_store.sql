CREATE DATABASE IF NOT EXISTS alx_book_store

CREATE TABLE Books (
   book_id (Primary Key)
   title VARCHAR(130),
   FOREIGN KEY (author_id) REFERENCES Authors(author_id),
   price DOUBLE NOT NULL,
   publication_date DATE
);
  
CREATE TABLE Authors (
  author_id INT AUTO INCREMENT PRIMARY KEY,
  author_name VARCHAR(215) NOT NULL
);

CREATE TABLE Customers (
  customer_id INT AUTO INCREMENT PRIMARY KEY,
  customer_name VARCHAR(215) NOT NULL,
  email VARCHAR(215) UNIQUE NOT NULL,
  address TEXT
 ); 

CREATE TABLE Orders (
  order_id INT AUTO INCREMENT PRIMARY KEY,
  customer_id INT,
  order_date DATE NOT NULL,
  FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details (
 orderdetail_id INT AUTO INCREMENT PRIMARY KEY,
 order_id INT,
 book_id INT, 
 quantity DOUBLE NOT NULL,
 FOREIGN KEY (order_id) REFERENCES Orders(order_id),
 FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
  
  
   
  
  
