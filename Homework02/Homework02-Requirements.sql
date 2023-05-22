-- Find all Students with FirstName = Antonio
SELECT *
FROM Student
WHERE FirstName = 'Antonio'

-- Find all Students with DateOfBirth greater than ‘01.01.1999’
SELECT *
FROM Student
WHERE DateOfBirth > '01.01.1999'

-- Find all Students with LastName starting With ‘J’ enrolled in January/1998
SELECT *
FROM Student
WHERE LastName LIKE 'J%' and (EnrolledDate >= '01.01.1998' and EnrolledDate <= '01.31.1998')

-- List all Students ordered by FirstName
SELECT *
FROM Student
ORDER BY FirstName 

-- List all Teacher Last Names and Student Last Names in single result set. Remove duplicates.

SELECT LastName FROM Teacher
UNION
SELECT LastName FROM Student