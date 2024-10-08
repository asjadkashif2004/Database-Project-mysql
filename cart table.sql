use priceoye_pk;
CREATE TABLE Cart (
    CartID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Users(User_ID)
);
CREATE TABLE CartItems (
    CartItemID INT AUTO_INCREMENT PRIMARY KEY,
    CartID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (CartID) REFERENCES Cart(CartID),
    FOREIGN KEY (ProductID) REFERENCES Products(Product_id)
);
INSERT INTO Cart (UserID) VALUES (1);
INSERT INTO CartItems (CartID, ProductID, Quantity) VALUES
(1, 1, 1),  -- Cart 1 includes 1 of Product 1
(1, 2, 2),  -- Cart 1 includes 2 of Product 2
(1, 3, 1);  -- Cart 1 includes 1 of Product 3
