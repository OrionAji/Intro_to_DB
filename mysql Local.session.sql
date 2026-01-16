CREATE TABLE Books (
    Book_id INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(130) NOT NULL,
    Author_id INT FOREIGN KEY REFERENCES Authors Table(Author_id),
    Price DOUBLE,
    Publication_Date DATE
);

CREATE TABLE Authors (
    Author_id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(215) NOT NULL,
);

CREATE TABLE Customers (
    Customer_id INT PRIMARY KEY AUTO_INCREMENT,
    Customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    Address TEXT
);

CREATE TABLE Orders (
    Order_id INT PRIMARY KEY AUTO_INCREMENT,
    Customer_id FOREIGN KEY REFERENCES Customers Table(Customer_id),
    Order_Date DATE NOT NULL,
);

CREATE TABLE Order_Details (
    Orderdetailid INT PRIMARY KEY AUTO_INCREMENT,
    Order_id FOREIGN KEY REFERENCES Orders Table(Order_id),
    Book_id FOREIGN KEY REFERENCES Books Table(Book_id),
    Quantity DOUBLE NOT NULL
);