--DROP TABLE c6_registration
--DROP TABLE c6_section
--DROP TABLE c6_qualified
--DROP TABLE c6_course
--DROP TABLE c6_faculty
--DROP TABLE c6_student

CREATE TABLE c6_student (
	StudentId INT PRIMARY KEY,
	StudentName NVARCHAR(255) NOT NULL
);

CREATE TABLE c6_faculty (
	FacultyID INT IDENTITY PRIMARY KEY,
	FacultyName NVARCHAR(255) NOT NULL
);

CREATE TABLE c6_course (
	CourseID CHAR(7) PRIMARY KEY,
	CourseName VARCHAR(255) NOT NULL
);

CREATE TABLE c6_qualified (
	FacultyID INT FOREIGN KEY REFERENCES c6_faculty(FacultyID) NOT NULL,
	CourseID CHAR(7) FOREIGN KEY REFERENCES c6_course(CourseID) NOT NULL,
	DateQualified DATE NOT NULL
);

CREATE TABLE c6_section (
	SectionNo INT IDENTITY PRIMARY KEY,
	Semester VARCHAR(7) NOT NULL,
	CourseID CHAR(7) FOREIGN KEY REFERENCES c6_course(CourseID) NOT NULL
);

CREATE TABLE c6_registration (
	StudentID INT FOREIGN KEY REFERENCES c6_student(StudentID) NOT NULL,
	SectionNo INT FOREIGN KEY REFERENCES c6_section(SectionNo) NOT NULL
);


INSERT INTO c6_student (StudentId,StudentnAME) VALUES (58745,'Smith');

SELECT * FROM c6_student;

DELETE FROM c6_student
WHERE StudentId = 58745;

SELECT * FROM c6_student;
