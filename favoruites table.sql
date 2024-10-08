CREATE TABLE Favorites (
    FavoriteID INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    product_id INT,
    DateAdded DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO Favorites (user_id, product_id, DateAdded) VALUES 
(1, 10, '2024-05-01 10:30:00'),
(2, 15, '2024-05-02 11:00:00'),
(3, 20, '2024-05-03 12:00:00'),
(4, 25, '2024-05-04 13:00:00'),
(5, 30, '2024-05-05 14:00:00'),
(6, 35, '2024-05-06 15:00:00'),
(7, 40, '2024-05-07 16:00:00'),
(8, 45, '2024-05-08 17:00:00'),
(9, 50, '2024-05-09 18:00:00'),
(10, 5, '2024-05-10 19:00:00'),
(11, 12, '2024-05-11 20:00:00'),
(12, 18, '2024-05-12 21:00:00'),
(13, 22, '2024-05-13 22:00:00');
