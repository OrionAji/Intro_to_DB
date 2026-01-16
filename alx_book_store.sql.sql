-- 1. Create Authors first (referenced by Books)
CREATE TABLE Authors (
    Author_id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(215) NOT NULL
);

-- 2. Create Books
CREATE TABLE Books (
    Book_id INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(130) NOT NULL,
    Author_id INT,
    Price DOUBLE,
    Publication_Date DATE,
    FOREIGN KEY (Author_id) REFERENCES Authors(Author_id)
);

-- 3. Create Customers
CREATE TABLE Customers (
    Customer_id INT PRIMARY KEY AUTO_INCREMENT,
    Customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE NOT NULL,
    Address TEXT
);

-- 4. Create Orders (referenced by Order_Details)
CREATE TABLE Orders (
    Order_id INT PRIMARY KEY AUTO_INCREMENT,
    Customer_id INT,
    Order_Date DATE NOT NULL,
    FOREIGN KEY (Customer_id) REFERENCES Customers(Customer_id)
);

-- 5. Create Order_Details
CREATE TABLE Order_Details (
    Orderdetailid INT PRIMARY KEY AUTO_INCREMENT,
    Order_id INT,
    Book_id INT,
    Quantity DOUBLE NOT NULL,
    FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
    FOREIGN KEY (Book_id) REFERENCES Books(Book_id)
);