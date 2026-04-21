use LeetCode;

CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE EmployeeUNI (
    id INT,
    unique_id INT,
    PRIMARY KEY (id, unique_id)
);

INSERT INTO Employees (id, name) VALUES
(1, 'Alice'),
(7, 'Bob'),
(11, 'Meir'),
(90, 'Winston'),
(3, 'Jonathan');

INSERT INTO EmployeeUNI (id, unique_id) VALUES
(3, 1),
(11, 2),
(90, 3);

-- Problem Statement:
-- Show the unique ID of each employee. If an employee does not have a unique ID, display NULL.

-- Solution Query
SELECT unique_id, name
FROM Employees 
LEFT JOIN EmployeeUNI 
ON Employees.id = EmployeeUNI.id;

-- output
-- +-----------+----------+
-- | unique_id | name     |
-- +-----------+----------+
-- | null      | Alice    |
-- | null      | Bob      |
-- | 2         | Meir     |
-- | 3         | Winston  |
-- | 1         | Jonathan |
-- +-----------+----------+