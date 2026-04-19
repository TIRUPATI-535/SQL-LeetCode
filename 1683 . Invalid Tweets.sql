use LeetCode;

CREATE TABLE Tweets (
    tweet_id INT PRIMARY KEY,
    content VARCHAR(100)
);

INSERT INTO Tweets (tweet_id, content) VALUES
(1, 'Let us Code'),
(2, 'More than fifteen chars are here!');

-- Problem Statement:
-- Find the IDs of tweets where the length of content is strictly greater than 15 characters.

-- Solution Query
SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;

-- Output: 
-- +----------+
-- | tweet_id |
-- +----------+
-- | 2        |
-- +----------+