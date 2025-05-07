CREATE TABLE ProductDetail_1NF (
    OrderID INT, -- Defines an integer column for OrderID.
    CustomerName VARCHAR(255), -- Defines a string column for CustomerName with a maximum length of 255.
    Product VARCHAR(255) -- Defines a string column for Product with a maximum length of 255.
); -- Creates a table named 'ProductDetail_1NF'.

INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (101, 'John Doe', 'Laptop'); -- Inserts a single row into 'ProductDetail_1NF'.
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (101, 'John Doe', 'Mouse'); -- Inserts another row into 'ProductDetail_1NF'.
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (102, 'Jane Smith', 'Tablet'); -- Inserts a row into 'ProductDetail_1NF'.
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (102, 'Jane Smith', 'Keyboard'); -- Inserts a row into 'ProductDetail_1NF'.
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (102, 'Jane Smith', 'Mouse'); -- Inserts a row into 'ProductDetail_1NF'.
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (103, 'Emily Clark', 'Phone'); -- Inserts a row into 'ProductDetail_1NF'.

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY, -- Defines an integer column for OrderID and sets it as the primary key (unique and not null).
    CustomerName VARCHAR(255) -- Defines a string column for CustomerName with a maximum length of 255.
); -- Creates a table named 'Orders'.

INSERT INTO Orders (OrderID, CustomerName) VALUES (101, 'John Doe'); -- Inserts a row into 'Orders'.
INSERT INTO Orders (OrderID, CustomerName) VALUES (102, 'Jane Smith'); -- Inserts a row into 'Orders'.
INSERT INTO Orders (OrderID, CustomerName) VALUES (103, 'Emily Clark'); -- Inserts a row into 'Orders'.

CREATE TABLE OrderDetails (
    OrderID INT, -- Defines an integer column for OrderID.
    Product VARCHAR(255), -- Defines a string column for Product with a maximum length of 255.
    Quantity INT, -- Defines an integer column for Quantity.
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) -- Defines a foreign key constraint on 'OrderID' that references the 'OrderID' column in the 'Orders' table.
); -- Creates a table named 'OrderDetails'.

INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES (101, 'Laptop', 2); -- Inserts a row into 'OrderDetails'.
INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES (101, 'Mouse', 1); -- Inserts a row into 'OrderDetails'.
INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES (102, 'Tablet', 3); -- Inserts a row into 'OrderDetails'.
INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES (102, 'Keyboard', 1); -- Inserts a row into 'OrderDetails'.
INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES (102, 'Mouse', 2); -- Inserts a row into 'OrderDetails'.
INSERT INTO OrderDetails (OrderID, Product, Quantity) VALUES (103, 'Phone', 1); -- Inserts a row into 'OrderDetails'.