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
ORDER BY J.Mssv

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