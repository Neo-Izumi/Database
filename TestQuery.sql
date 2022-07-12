SELECT * FROM Assess
SELECT * FROM [Assessment System]
SELECT * FROM Assignment
SELECT * FROM Categories
SELECT * FROM Classes
SELECT * FROM Courses
SELECT * FROM Enroll
SELECT * FROM Grade
SELECT * FROM Groups
SELECT * FROM [Join]
SELECT * FROM Lecturers
SELECT * FROM Students
SELECT * FROM [View]

SELECT Students.Mssv, Classes.ClassID, AsnID, [AS].CouID, [AS].CatID, [AS].AsID, Semester, [Start Date], [End Date]
FROM 
	(SELECT * FROM [Join] WHERE GrID = 'IA1604') AS IA1604
		INNER JOIN Students ON Students.Mssv = IA1604.Mssv
		INNER JOIN Enroll ON Enroll.GrID = IA1604.GrID
		INNER JOIN Classes ON Classes.ClassID = Enroll.ClassID
		INNER JOIN Assess ON Assess.ClassID = Classes.ClassID
		INNER JOIN [Assessment System] AS [AS] ON [AS].AsID = Assess.AsID
--WHERE Students.Mssv = 'HE00003' AND [End Date] = '2021-08-01'
ORDER BY 1

SELECT Classes.ClassID, Classes.AsnID, [AS].AsID, [AS].CouID, [AS].CatID, [AS].[Weight] 
FROM 
	Classes INNER JOIN Assess ON Classes.ClassID = Assess.ClassID
			INNER JOIN [Assessment System] AS [AS] ON [AS].AsID = Assess.AsID 
ORDER BY Classes.ClassID

SELECT J.Mssv, CA.ClassID, CouID, SUM(Score * [Weight]) AS [Average]
FROM 
	(SELECT GrID FROM Groups WHERE GrID = 'IA1604') AS IA1604
		INNER JOIN [Join] AS J ON J.GrID = IA1604.GrID
		INNER JOIN Enroll ON Enroll.GrID = IA1604.GrID
		INNER JOIN 
			(SELECT Classes.ClassID, Classes.AsnID, [AS].AsID, [AS].CouID, [AS].CatID, [AS].[Weight] 
			FROM 
				Classes INNER JOIN Assess ON Classes.ClassID = Assess.ClassID
						INNER JOIN [Assessment System] AS [AS] ON [AS].AsID = Assess.AsID) AS CA
			ON Enroll.ClassID = CA.ClassID
		INNER JOIN Grade ON CA.AsID = Grade.AsID AND  Grade.Mssv = J.Mssv  
GROUP BY J.Mssv, CouID, CA.ClassID
ORDER BY J.Mssv, ClassID

SELECT Students.Mssv, Classes.ClassID, AsnID, [AS].CouID, [AS].CatID, [AS].AsID, Semester, [Start Date], [End Date]
FROM 
	(SELECT * FROM [Join] WHERE GrID = 'IA1608') AS IA1608
		INNER JOIN Students ON Students.Mssv = IA1608.Mssv
		INNER JOIN Enroll ON Enroll.GrID = IA1608.GrID
		INNER JOIN Classes ON Classes.ClassID = Enroll.ClassID
		INNER JOIN Assess ON Assess.ClassID = Classes.ClassID
		INNER JOIN [Assessment System] AS [AS] ON [AS].AsID = Assess.AsID
--WHERE Students.Mssv = 'HE00003' AND [End Date] = '2021-08-01'
ORDER BY 1

SELECT * FROM Enroll WHERE GrID = 'IA1608'

CREATE INDEX Stu_Name ON Students([Last Name], [First Name])

CREATE INDEX Lec_Name ON Lecturers([Last Name], [First Name])


CREATE VIEW View_Assess_AssessSystem AS
SELECT Classes.ClassID, Enroll.GrID, AsnID, Semester, [Start Date], [End Date], Assess.AsID, [AS].CouID, [AS].CatID, [Number of Questions], Duration, [Weight]
FROM 
	Classes INNER JOIN Enroll ON Classes.ClassID = Enroll.ClassID
			INNER JOIN Assess ON Classes.ClassID = Assess.ClassID
			INNER JOIN [Assessment System] AS [AS] ON [AS].AsID = Assess.AsID 

SELECT * FROM View_Assess_AssessSystem ORDER BY GrID, ClassID


CREATE TRIGGER View_Average ON [View]
AFTER INSERT, UPDATE
AS
-- 210
SELECT J.Mssv, VAA.GrID, VAA.ClassID, VAA.CouID, SUM(Score * [Weight]) AS Average 
FROM 
	[Join] AS J INNER JOIN Enroll ON J.GrID = Enroll.GrID
				INNER JOIN [dbo].View_Assess_AssessSystem AS VAA ON VAA.ClassID = Enroll.ClassID AND VAA.GrID = J.GrID
				INNER JOIN Grade ON J.Mssv = Grade.Mssv AND Grade.AsID = VAA.AsID
GROUP BY J.Mssv, VAA.ClassID, VAA.CouID, VAA.GrID
ORDER BY 1, 2

SELECT * FROM Enroll

SELECT * FROM Grade
	

