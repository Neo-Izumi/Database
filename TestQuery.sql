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

SELECT Students.Mssv, Classes.ClassID, AsnID, [AS].CouID, [AS].CatID, Semester, [Start Date], [End Date]
FROM 
	(SELECT * FROM [Join] WHERE GrID = 'IA1604') AS IA1604
		INNER JOIN Students ON Students.Mssv = IA1604.Mssv
		INNER JOIN Enroll ON Enroll.GrID = IA1604.GrID
		INNER JOIN Classes ON Classes.ClassID = Enroll.ClassID
		INNER JOIN Assess ON Assess.ClassID = Classes.ClassID
		INNER JOIN [Assessment System] AS [AS] ON [AS].AsID = Assess.AsID
ORDER BY 1