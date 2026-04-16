use LeetCode;

-- Create Table
CREATE TABLE Customer (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    referee_id INT
);

-- Insert Sample Data
INSERT INTO Customer (id, name, referee_id) VALUES
(1, 'Will', NULL),
(2, 'Jane', NULL),
(3, 'Alex', 2),
(4, 'Bill', NULL),
(5, 'Zack', 1),
(6, 'Mark', 2);

-- Problem:
-- Find customers who are NOT referred by id = 2
-- OR customers who are not referred by anyone

-- Solution Query
SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;


-- Output
-- +------+
-- | name |
-- +------+
-- | Will |
-- | Jane |
-- | Bill |
-- | Zack |
-- +------+