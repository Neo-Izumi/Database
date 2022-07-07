
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00027', 'anv@fpt.edu.vn', 'A', N'Nguyễn Thị', 0, CAST('02-01-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00028', 'bnv@fpt.edu.vn', 'B', N'Nguyễn Thị', 0, CAST('02-02-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00029', 'cnv@fpt.edu.vn', 'C', N'Nguyễn Thị', 0, CAST('02-03-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00030', 'dnv@fpt.edu.vn', 'D', N'Nguyễn Thị', 0, CAST('02-04-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00031', 'env@fpt.edu.vn', 'E', N'Nguyễn Thị', 0, CAST('02-05-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00032', 'fnv@fpt.edu.vn', 'F', N'Nguyễn Thị', 0, CAST('02-06-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00033', 'gnv@fpt.edu.vn', 'G', N'Nguyễn Thị', 0, CAST('02-07-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00039', 'nnv@fpt.edu.vn', 'N', N'Nguyễn Thị', 0, CAST('02-14-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00040', 'onv@fpt.edu.vn', 'O', N'Nguyễn Thị', 0, CAST('02-15-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00041', 'pnv@fpt.edu.vn', 'P', N'Nguyễn Thị', 0, CAST('02-16-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00042', 'qnv@fpt.edu.vn', 'Q', N'Nguyễn Thị', 0, CAST('02-17-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00043', 'rnv@fpt.edu.vn', 'R', N'Nguyễn Thị', 0, CAST('02-18-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00044', 'snv@fpt.edu.vn', 'S', N'Nguyễn Thị', 0, CAST('02-19-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00045', 'tnv@fpt.edu.vn', 'T', N'Nguyễn Thị', 0, CAST('02-20-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00046', 'unv@fpt.edu.vn', 'U', N'Nguyễn Thị', 0, CAST('02-21-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00047', 'vnv@fpt.edu.vn', 'V', N'Nguyễn Thị', 0, CAST('02-22-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00048', 'wnv@fpt.edu.vn', 'W', N'Nguyễn Thị', 0, CAST('02-23-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00049', 'xnv@fpt.edu.vn', 'X', N'Nguyễn Thị', 0, CAST('02-24-2002' AS DATE));
INSERT Students(Mssv, Email, [First Name], [Last Name], Gender, [Date of Birth]) VALUES ('HE00050', 'ynv@fpt.edu.vn', 'Y', N'Nguyễn Thị', 0, CAST('02-25-2002' AS DATE));


SELECT * FROM Students

INSERT Groups(GrID, Major, [Number of Students]) VALUES ('IA1604', 'Information Assurance', 15);
INSERT Groups(GrID, Major, [Number of Students]) VALUES ('AI1605', 'Artificial Intelligence', 15);
INSERT Groups(GrID, Major, [Number of Students]) VALUES ('SE1606', 'Software Engineering', 20);
INSERT Groups(GrID, Major, [Number of Students]) VALUES ('IOT1607', 'Internet of Things', 15);
INSERT Groups(GrID, Major, [Number of Students]) VALUES ('IA1608', 'Information Assurance', 10);
INSERT Groups(GrID, Major, [Number of Students]) VALUES ('SE1609', 'Software Engineering', 20);


SELECT * FROM Groups

INSERT [Join](Mssv, GrID) VALUES ('HE00001', 'IA1604');
INSERT [Join](Mssv, GrID) VALUES ('HE00002', 'IA1604');
INSERT [Join](Mssv, GrID) VALUES ('HE00003', 'IA1604');
INSERT [Join](Mssv, GrID) VALUES ('HE00004', 'IA1604');
INSERT [Join](Mssv, GrID) VALUES ('HE00005', 'IA1604');
INSERT [Join](Mssv, GrID) VALUES ('HE00006', 'IA1604');
INSERT [Join](Mssv, GrID) VALUES ('HE00007', 'IA1604');
INSERT [Join](Mssv, GrID) VALUES ('HE00008', 'IA1604');
INSERT [Join](Mssv, GrID) VALUES ('HE00009', 'IA1604');
INSERT [Join](Mssv, GrID) VALUES ('HE00010', 'IA1604');
INSERT [Join](Mssv, GrID) VALUES ('HE00011', 'IA1604');
INSERT [Join](Mssv, GrID) VALUES ('HE00012', 'IA1604');
INSERT [Join](Mssv, GrID) VALUES ('HE00013', 'IA1604');
INSERT [Join](Mssv, GrID) VALUES ('HE00014', 'IA1604');
INSERT [Join](Mssv, GrID) VALUES ('HE00015', 'IA1604');

INSERT [Join](Mssv, GrID) VALUES ('HE00016', 'AI1605');
INSERT [Join](Mssv, GrID) VALUES ('HE00017', 'AI1605');
INSERT [Join](Mssv, GrID) VALUES ('HE00018', 'AI1605');
INSERT [Join](Mssv, GrID) VALUES ('HE00019', 'AI1605');
INSERT [Join](Mssv, GrID) VALUES ('HE00020', 'AI1605');
INSERT [Join](Mssv, GrID) VALUES ('HE00021', 'AI1605');
INSERT [Join](Mssv, GrID) VALUES ('HE00022', 'AI1605');
INSERT [Join](Mssv, GrID) VALUES ('HE00029', 'AI1605');
INSERT [Join](Mssv, GrID) VALUES ('HE00030', 'AI1605');

INSERT [Join](Mssv, GrID) VALUES ('HE00031', 'SE1606');
INSERT [Join](Mssv, GrID) VALUES ('HE00032', 'SE1606');
INSERT [Join](Mssv, GrID) VALUES ('HE00033', 'SE1606');
INSERT [Join](Mssv, GrID) VALUES ('HE00034', 'SE1606');
INSERT [Join](Mssv, GrID) VALUES ('HE00035', 'SE1606');
INSERT [Join](Mssv, GrID) VALUES ('HE00036', 'SE1606');
INSERT [Join](Mssv, GrID) VALUES ('HE00037', 'SE1606');
INSERT [Join](Mssv, GrID) VALUES ('HE00038', 'SE1606');
INSERT [Join](Mssv, GrID) VALUES ('HE00046', 'SE1606');
INSERT [Join](Mssv, GrID) VALUES ('HE00047', 'SE1606');
INSERT [Join](Mssv, GrID) VALUES ('HE00048', 'SE1606');
INSERT [Join](Mssv, GrID) VALUES ('HE00049', 'SE1606');
INSERT [Join](Mssv, GrID) VALUES ('HE00050', 'SE1606');

SELECT * FROM [Join]


SELECT * FROM Courses

INSERT Lecturers(LecID, Email, [First Name], [Last Name], Gender, [Date of Birth], Report) VALUES ('GVA', 'gva@fe.edu.vn', 'A', N'Giảng Viên', 1, CAST('01-01-1985' AS date), NULL);
INSERT Lecturers(LecID, Email, [First Name], [Last Name], Gender, [Date of Birth], Report) VALUES ('GVB', 'gvb@fe.edu.vn', 'B', N'Giảng Viên', 0, CAST('01-02-1985' AS date), 'GVA');
INSERT Lecturers(LecID, Email, [First Name], [Last Name], Gender, [Date of Birth], Report) VALUES ('GVC', 'gvc@fe.edu.vn', 'C', N'Giảng Viên', 1, CAST('01-03-1985' AS date), 'GVA');
INSERT Lecturers(LecID, Email, [First Name], [Last Name], Gender, [Date of Birth], Report) VALUES ('GVG', 'gvg@fe.edu.vn', 'G', N'Giảng Viên', 1, CAST('01-07-1985' AS date), 'GVF');
INSERT Lecturers(LecID, Email, [First Name], [Last Name], Gender, [Date of Birth], Report) VALUES ('GVH', 'gvh@fe.edu.vn', 'H', N'Giảng Viên', 0, CAST('01-08-1985' AS date), NULL);
INSERT Lecturers(LecID, Email, [First Name], [Last Name], Gender, [Date of Birth], Report) VALUES ('GVI', 'gvi@fe.edu.vn', 'I', N'Giảng Viên', 1, CAST('01-09-1985' AS date), 'GVH');
INSERT Lecturers(LecID, Email, [First Name], [Last Name], Gender, [Date of Birth], Report) VALUES ('GVJ', 'gvj@fe.edu.vn', 'J', N'Giảng Viên', 0, CAST('01-10-1985' AS date), 'GVH');
INSERT Lecturers(LecID, Email, [First Name], [Last Name], Gender, [Date of Birth], Report) VALUES ('GVK', 'gvk@fe.edu.vn', 'K', N'Giảng Viên', 1, CAST('01-11-1985' AS date), 'GVH');


SELECT * FROM Lecturers


INSERT Assignment(AsnID, Major, Lecturer) VALUES ('ACSD', 'CSD201', 'GVA');
INSERT Assignment(AsnID, Major, Lecturer) VALUES ('BIAO', 'IAO202', 'GVB');
INSERT Assignment(AsnID, Major, Lecturer) VALUES ('CLAB', 'LAB211', 'GVC');
INSERT Assignment(AsnID, Major, Lecturer) VALUES ('DLAB', 'LAB211', 'GVD');

INSERT Assignment(AsnID, Major, Lecturer) VALUES ('FJPD', 'JPD113', 'GVF');
INSERT Assignment(AsnID, Major, Lecturer) VALUES ('GJPD', 'JPD113', 'GVG');


INSERT Assignment(AsnID, Major, Lecturer) VALUES ('IMAE', 'MAE101', 'GVI');
INSERT Assignment(AsnID, Major, Lecturer) VALUES ('JMAE', 'MAE101', 'GVJ');
INSERT Assignment(AsnID, Major, Lecturer) VALUES ('ISSL', 'SSL101c', 'GVI');

INSERT Assignment(AsnID, Major, Lecturer) VALUES ('JMAD', 'MAD101', 'GVJ');
INSERT Assignment(AsnID, Major, Lecturer) VALUES ('BNWC', 'NWC204', 'GVB');
INSERT Assignment(AsnID, Major, Lecturer) VALUES ('HOSG', 'OSG202', 'GVH');
INSERT Assignment(AsnID, Major, Lecturer) VALUES ('FSSG', 'SSG104', 'GVF');
INSERT Assignment(AsnID, Major, Lecturer) VALUES ('GSSG', 'SSG104', 'GVG');
INSERT Assignment(AsnID, Major, Lecturer) VALUES ('APRO', 'PRO192', 'GVA');


SELECT * FROM Assignment


INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22ACSD', 'ACSD', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22CLAB', 'CLAB', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22DLAB', 'DLAB', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22FJPD', 'FJPD', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22GJPD', 'GJPD', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));

INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22JMAD', 'JMAD', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22BNWC', 'BNWC', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22HOSG', 'HOSG', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22FSSG', 'FSSG', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22GSSG', 'GSSG', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22APRO', 'APRO', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));

INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22HCEA', 'HCEA', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22JCEA', 'JCEA', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22KCSI', 'KCSI', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22IMAE', 'IMAE', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22HPRF', 'HPRF', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SP22ISSL', 'ISSL', 'SPRING 2022', CAST('01-01-2022' AS date), CAST('04-01-2022' AS date));

INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('FA21ECSD', 'ECSD', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('FA21BIAO', 'BIAO', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('FA21CLAB', 'CLAB', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));

INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('FA21ICSI', 'ICSI', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('FA21IMAE', 'IMAE', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('FA21ISSL', 'ISSL', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('FA21HPRF', 'HPRF', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));

INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('FA21JMAD', 'JMAD', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('FA21BNWC', 'BNWC', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('FA21HOSG', 'HOSG', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('FA21GSSG', 'GSSG', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('FA21APRO', 'APRO', 'FALL 2021', CAST('09-01-2021' AS date), CAST('12-01-2021' AS date));

INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SU21JCEA', 'JCEA', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SU21KCSI', 'KCSI', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SU21ISSL', 'ISSL', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));

INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SU21JMAD', 'JMAD', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SU21BNWC', 'BNWC', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SU21HOSG', 'HOSG', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SU21FSSG', 'FSSG', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SU21APRO', 'APRO', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));

INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SU21ACSD', 'ACSD', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SU21ADBI', 'ADBI', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SU21BIAO', 'BIAO', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SU21CLAB', 'CLAB', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));
INSERT Classes(ClassID, AsnID, Semester, [Start Date], [End Date]) VALUES ('SU21FJPD', 'FJPD', 'SUMMER 2021', CAST('05-01-2021' AS date), CAST('08-01-2021' AS date));


SELECT * FROM Classes
SELECT * FROM Groups

INSERT Enroll(ClassID, GrID) VALUES ('SU21KCSI', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SU21IMAE', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SU21JCEA', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('FA21JMAD', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SP22BCSD', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SP22ADBI', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SP22FJPD', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SP22BIAO', 'IA1604')
INSERT Enroll(ClassID, GrID) VALUES ('SP22CLAB', 'IA1604')

INSERT Enroll(ClassID, GrID) VALUES ('FA21IMAE', 'IA1608')
INSERT Enroll(ClassID, GrID) VALUES ('FA21ICSI', 'IA1608')
INSERT Enroll(ClassID, GrID) VALUES ('FA21HPRF', 'IA1608')
INSERT Enroll(ClassID, GrID) VALUES ('FA21ISSL', 'IA1608')

INSERT Enroll(ClassID, GrID) VALUES ('SP22IMAE', 'AI1605')
INSERT Enroll(ClassID, GrID) VALUES ('SP22HPRF', 'AI1605')
INSERT Enroll(ClassID, GrID) VALUES ('SP22ISSL', 'AI1605')
INSERT Enroll(ClassID, GrID) VALUES ('SP22JCEA', 'AI1605')
INSERT Enroll(ClassID, GrID) VALUES ('SP22KCSI', 'AI1605')

INSERT Enroll(ClassID, GrID) VALUES ('FA21DDBI', 'IOT1607')
INSERT Enroll(ClassID, GrID) VALUES ('FA21ECSD', 'IOT1607')
INSERT Enroll(ClassID, GrID) VALUES ('FA21CLAB', 'IOT1607')
INSERT Enroll(ClassID, GrID) VALUES ('FA21FJPD', 'IOT1607')
INSERT Enroll(ClassID, GrID) VALUES ('FA21BIAO', 'IOT1607')


SELECT * FROM Enroll


INSERT Categories(CatID, [Name], [Type], [Completion Criteria]) VALUES ('AS', 'Assignment ', 'On-Going', '>0');
INSERT Categories(CatID, [Name], [Type], [Completion Criteria]) VALUES ('LAB', 'Lab', 'On-Going', '>0');
INSERT Categories(CatID, [Name], [Type], [Completion Criteria]) VALUES ('LOC', 'Line of Code', 'On-Going', '>=750');
INSERT Categories(CatID, [Name], [Type], [Completion Criteria]) VALUES ('PT', 'Progress Test', 'On-Going', '>0');
INSERT Categories(CatID, [Name], [Type], [Completion Criteria]) VALUES ('PE', 'Practical Exam', 'On-Going', '>0');
INSERT Categories(CatID, [Name], [Type], [Completion Criteria]) VALUES ('FE', 'Final Exam', 'Final Exam', '>4');
INSERT Categories(CatID, [Name], [Type], [Completion Criteria]) VALUES ('FER', 'Final Exam Retake', 'Final Exam', '>4');


SELECT * FROM Categories