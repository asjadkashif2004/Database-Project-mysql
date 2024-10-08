-- Create TotalAmount table
CREATE TABLE TotalAmount (
    OrderID INT PRIMARY KEY,
    Total DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(Order_ID)
);
-- drop table totalamount;
-- Calculate and insert total amounts into TotalAmount table
INSERT INTO TotalAmount (OrderID, Total)
SELECT op.Order_ID, SUM(op.Quantity * p.price) AS Total
FROM Order_Products op
JOIN Products p ON op.Product_ID = p.product_id
GROUP BY op.Order_ID;