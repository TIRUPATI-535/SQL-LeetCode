 
use LeetCode;

drop table if exists Products;

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    low_fats ENUM('Y', 'N'),
    recyclable ENUM('Y', 'N')
);


INSERT INTO Products (product_id, low_fats, recyclable) VALUES
(0, 'Y', 'N'),
(1, 'Y', 'Y'),
(2, 'N', 'Y'),
(3, 'Y', 'Y'),
(4, 'N', 'N');

-- Problem:
-- Find product_ids where product is both low fat and recyclable

-- Solution Query
SELECT product_id
FROM Products
WHERE low_fats = 'Y' AND recyclable = 'Y';