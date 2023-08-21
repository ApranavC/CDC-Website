CREATE SCHEMA CDC_Portal;
USE CDC_Portal;
CREATE TABLE Companies(
id INT PRIMARY KEY,
name VARCHAR(255),
Role VARCHAR(255),
CTC FLOAT,
Students_Placed INT 
);
CREATE TABLE Student_Details(
Admission_Number VARCHAR(255) PRIMARY KEY,
Name VARCHAR(255),
CGPA FLOAT,
Domain VARCHAR(255),
Programming_Lang VARCHAR(255)
);


DELIMITER //

CREATE PROCEDURE Insert_Student_Detail(
    IN AdmissionNumber VARCHAR(255),
    IN StudentName VARCHAR(255),
    IN CGPA FLOAT,
    IN Domain VARCHAR(255),
    IN ProgrammingLang VARCHAR(255)
)
BEGIN  
    INSERT INTO Student_Details (Admission_Number, Name, CGPA, Domain, Programming_Lang)
    VALUES (AdmissionNumber, StudentName, CGPA, Domain, ProgrammingLang);
END //

DELIMITER ;

DELIMITER //

CREATE PROCEDURE Insert_company_Details(
	IN Entry_Number INT,
    IN name VARCHAR(255),
    IN role VARCHAR(255),
    IN ctc FLOAT,
    IN students_placed INT
)
BEGIN 
	INSERT INTO companies( id, Name, Role, CTC, Students_Placed)
    VALUES (Entry_Number, name, role, ctc, students_placed);
END //
select*from student_details;
select*from companies;
CALL Insert_Student_Detail('I20PH51', 'Paul',8.5,'Tech','C');
CALL Insert_company_Details(11,'Aspect ratio','Data analyst',14,2);