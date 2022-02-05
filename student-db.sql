CREATE SCHEMA `student-db` ;

CREATE TABLE `student-db`.`student` (
  `registration_id` INT NOT NULL AUTO_INCREMENT,
  `student_rollno` INT NULL,
  `student_name` VARCHAR(45) NULL,
  `student_class` VARCHAR(45) NULL,
  `student_division` VARCHAR(45) NULL,
  `contact_no` INT NULL,
  PRIMARY KEY (`registration_id`),
  UNIQUE INDEX `registration_id_UNIQUE` (`registration_id` ASC) VISIBLE);

ALTER TABLE `student-db`.`student` 
CHANGE COLUMN `contact_no` `contact_no` DOUBLE NULL DEFAULT NULL ;


INSERT INTO `student-db`.`student` (`student_rollno`, `student_name`, `student_class`, `student_division`, `contact_no`) VALUES ('76', 'Sean Bean', '12th', 'C', '4456876590');
INSERT INTO `student-db`.`student` (`student_rollno`, `student_name`, `student_class`, `student_division`, `contact_no`) VALUES ('17', 'Miss Ginny Wisley', '7th', 'A', '6543678711');

SELECT * FROM `student-db`.student;