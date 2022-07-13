-- QUERY --


-- INDEXES --

CREATE INDEX Stu_Name ON Students([Last Name], [First Name])

CREATE INDEX Lec_Name ON Lecturers([Last Name], [First Name])

SELECT * FROM Students WHERE [Last Name] = N'Nguyễn Văn' AND [First Name] = 'A'

-- VIEW --

CREATE VIEW View_Assess_AssessSystem AS
SELECT Classes.ClassID, Enroll.GrID, AsnID, Semester, [Start Date], [End Date], Assess.AsID, [AS].CouID, [AS].CatID, [Number of Questions], Duration, [Weight]
FROM 
	Classes INNER JOIN Enroll ON Classes.ClassID = Enroll.ClassID
			INNER JOIN Assess ON Classes.ClassID = Assess.ClassID
			INNER JOIN [Assessment System] AS [AS] ON [AS].AsID = Assess.AsID

SELECT * FROM View_Assess_AssessSystem

-- TRIGGER -- 

CREATE TRIGGER View_Average ON [View]
AFTER INSERT, UPDATE
AS
	DECLARE @AVG FLOAT;
	DECLARE @CLASS VARCHAR(50);
	DECLARE @STU VARCHAR(50);
	DECLARE @AVERAGE FLOAT;
	DECLARE @STA VARCHAR(50);
	SELECT @STU = Mssv, @CLASS = ClassID, @AVG = Average, @STA = [Status] FROM inserted;

	SELECT @AVERAGE = SUM(Score * [Weight])  
	FROM 
		[Join] AS J INNER JOIN Enroll ON J.GrID = Enroll.GrID
					INNER JOIN [dbo].View_Assess_AssessSystem AS VAA ON VAA.ClassID = Enroll.ClassID AND VAA.GrID = J.GrID
					INNER JOIN Grade ON J.Mssv = Grade.Mssv AND Grade.AsID = VAA.AsID
	WHERE J.Mssv = @STU AND VAA.ClassID = @CLASS
	GROUP BY J.Mssv, VAA.ClassID, VAA.CouID, VAA.GrID
	IF @AVG <> @AVERAGE
	BEGIN
		PRINT 'Average score added to [View] was not corresponding to the average scored counted from [Grade]'
		ROLLBACK TRAN
	END
	ELSE IF (NOT @STA = 'PASSED') AND (NOT @STA = 'NOT PASSED')
	BEGIN
		PRINT 'Status must be passed or not passed'
		ROLLBACK TRAN
	END
	ELSE IF (@AVG <= 4 AND @STA = 'PASSED') OR (@AVG > 4 AND @STA = 'NOT PASSED')
	BEGIN
		PRINT 'Incorrect Status'
		ROLLBACK TRAN
	END
	
	UPDATE [View] SET Average = 8.645, [Status] = 'ASDFK' WHERE Mssv = 'HE00001' AND ClassID = 'FA21APRO'

	SELECT * FROM [View]

-- STORED PROCEDURE -- 

CREATE PROCEDURE Count_Student
	@GR VARCHAR(50),
	@COUNT INT OUT
AS
BEGIN
	SELECT @COUNT = COUNT(Mssv) FROM [Join] WHERE GrID = @GR
END

DECLARE @NumOfStu INT = 0;
EXEC Count_Student @GR = 'IA1604', @COUNT = @NumOfStu OUT
PRINT @NumOfStu;


-- 10 REQUIRED QUERIES -- 

-- 1: A QUERY THAT USES ORDER BY --

SELECT * FROM Students ORDER BY [First Name], [Last Name]


-- 2: A QUERY THAT USES INNER JOIN --

SELECT Students.Mssv, [Last Name], [First Name], Classes.ClassID, AsnID, Semester, [Start Date], [End Date] 
FROM
	Students INNER JOIN [Join] ON Students.Mssv = [Join].Mssv
			 INNER JOIN Enroll ON Enroll.GrID = [Join].GrID
			 INNER JOIN Classes ON Enroll.ClassID = Classes.ClassID


-- 3: A QUERY THAT ESES AGGREGATE FUNCTION --

SELECT Lecturers.LecID, [Last Name], [First Name], Semester, COUNT(Assignment.AsnID) AS Assigned 
FROM 
	Lecturers INNER JOIN Assignment ON Lecturers.LecID = Assignment.Lecturer
			  INNER JOIN Classes ON Assignment.AsnID = Classes.AsnID
GROUP BY Lecturers.LecID, [Last Name], [First Name], Semester


-- 4: A QUERY THAT USES GROUP BY AND HAVING -- 

SELECT LecID, [Last Name], [First Name], Semester, Enroll.GrID, Enroll.ClassID, COUNT(Mssv) AS [Num of Students]    
FROM
	Lecturers INNER JOIN Assignment ON Lecturers.LecID = Assignment.Lecturer
			  INNER JOIN Classes ON Classes.AsnID = Assignment.AsnID
			  INNER JOIN Enroll ON Classes.ClassID = Enroll.ClassID
			  INNER JOIN [Join] ON Enroll.GrID = [Join].GrID
GROUP BY LecID, [Last Name], [First Name], Semester, Enroll.GrID, Enroll.ClassID
HAVING LecID = 'GVA'


-- 5: A QUERY THAT USES A SUB-QUERY AS A RELATION --

SELECT LEC.LecID, LEC.[Last Name], LEC.[First Name], Major, Semester, CouID, [AS].CatID
FROM 
	(SELECT LecID,[Last Name], [First Name] FROM Lecturers) AS LEC
		INNER JOIN 
			Assignment 
			ON Assignment.Lecturer = LecID
		INNER JOIN 
			(SELECT ClassID, AsnID, Semester FROM Classes) AS CLASS 
			ON Assignment.AsnID = CLASS.AsnID
		INNER JOIN 
			Assess 
			ON Assess.ClassID = CLASS.ClassID
		INNER JOIN
			(SELECT AsID, CouID, CatID FROM [Assessment System]) AS [AS]
			ON Assess.AsID = [AS].AsID
		INNER JOIN 
			Categories
			ON [AS].CatID = Categories.CatID
ORDER BY LEC.LecID, Major, Semester, CatID


-- 6: A QUERY THAT USES A SUB-QUERY IN THE WHERE CLAUSE --

SELECT J.Mssv, J.GrID, Enroll.ClassID, CONCAT([Last Name], ' ', [First Name]) AS Lecture, CouID, CatID, Score, [Date]  
FROM
	[Join] AS J INNER JOIN Enroll ON J.GrID = Enroll.GrID
				INNER JOIN View_Assess_AssessSystem AS VAA ON Enroll.ClassID = VAA.ClassID AND Enroll.GrID = VAA.GrID
				INNER JOIN Assignment ON Assignment.AsnID = VAA.AsnID 
				INNER JOIN Lecturers ON Assignment.Lecturer = Lecturers.LecID
				INNER JOIN Grade ON Grade.Mssv = J.Mssv AND Grade.AsID = VAA.AsID 
WHERE J.Mssv = (SELECT Mssv FROM Students WHERE [First Name] = 'A' AND [Last Name] = N'Nguyễn Văn')


-- 7: A QUERY THAT USES PARTIAL MATCHING IN THE WHERE CLAUSE --

SELECT J.Mssv, CONCAT([Last Name], ' ', [First Name]) AS [Student Name], ClassID, Average, [Status]
FROM 
	Students INNER JOIN [Join] AS J ON Students.Mssv = J.Mssv 
			 INNER JOIN [View] AS V ON J.Mssv = V.Mssv
WHERE ClassID LIKE 'FA21%'


-- 8: A QUERY THAT USES A SELF-JOIN --

SELECT Lecturers.LecID, Lecturers.Email, CONCAT(Lecturers.[Last Name], ' ', Lecturers.[First Name]) AS Lecture, CONCAT(LEADER.[Last Name], ' ', LEADER.[First Name]) AS [Leader] 
FROM Lecturers LEFT JOIN Lecturers AS [LEADER] ON Lecturers.Report = LEADER.LecID


-- 9 --

SELECT Lecturers.LecID, Lecturers.Email, CONCAT(Lecturers.[Last Name], ' ', Lecturers.[First Name]) AS Lecture, Report, Major, Courses.[Name], Semester, Students.Mssv, CONCAT(Students.[Last Name], ' ', Students.[First Name]) AS [Student Name], Students.Email, Students.Gender
FROM
	Lecturers INNER JOIN Assignment ON Lecturers.LecID = Assignment.Lecturer
			  INNER JOIN Courses ON Courses.CouID = Assignment.Major
			  INNER JOIN Classes ON Classes.AsnID = Assignment.AsnID
			  INNER JOIN Enroll ON Classes.ClassID = Enroll.ClassID
			  INNER JOIN [Join] ON [Join].GrID = Enroll.GrID
			  INNER JOIN Students ON Students.Mssv = [Join].Mssv
ORDER BY Lecturers.LecID, Semester, Students.Mssv, Major


-- 10 --

SELECT Lecturers.LecID, Lecturers.Email AS [Lecturer Email], CONCAT(Lecturers.[Last Name], ' ', Lecturers.[First Name]) AS Lecture, J.GrID, CouID, J.Mssv, CONCAT(Students.[Last Name], ' ', Students.[First Name]) AS [Student Name], CatID, Score, [Date]
FROM
	Lecturers INNER JOIN Assignment ON Lecturers.LecID = Assignment.Lecturer
			  INNER JOIN View_Assess_AssessSystem AS VAA ON VAA.AsnID = Assignment.AsnID
			  INNER JOIN Enroll ON Enroll.ClassID = VAA.ClassID
			  INNER JOIN [Join] AS J ON J.GrID = Enroll.GrID
			  INNER JOIN Students ON Students.Mssv = J.Mssv
			  INNER JOIN Grade ON J.Mssv = Grade.Mssv AND VAA.AsID = Grade.AsID
			  





			 
	








