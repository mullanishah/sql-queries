CREATE PROCEDURE `STUDENT-DB`.getStudName(
	IN rollNum INT,
    OUT studName VARCHAR(45)
)
BEGIN
	SELECT fullName 
    INTO studName
    FROM STUDENT
    where rollno = rollNum
END$$
DELIMITER ;