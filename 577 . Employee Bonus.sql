use LeetCode;

CREATE TABLE Employee (
    empId INT PRIMARY KEY,
    name VARCHAR(50),
    supervisor INT,
    salary INT
);

CREATE TABLE Bonus (
    empId INT PRIMARY KEY,
    bonus INT
);

INSERT INTO Employee (empId, name, supervisor, salary) VALUES
(3, 'Brad', NULL, 4000),
(1, 'John', 3, 1000),
(2, 'Dan', 3, 2000),
(4, 'Thomas', 3, 4000);

INSERT INTO Bonus (empId, bonus) VALUES
(2, 500),
(4, 2000);

-- Problem Statement:
-- Find employees whose bonus is less than 1000 or who did not receive any bonus.

-- Solution Query
select name ,bonus from Employee 
left join Bonus 
on Employee.empId = Bonus.empId
where Bonus <1000 or Bonus IS NULL;

-- Output: 
-- +------+-------+
-- | name | bonus |
-- +------+-------+
-- | Brad | null  |
-- | John | null  |
-- | Dan  | 500   |
-- +------+-------+