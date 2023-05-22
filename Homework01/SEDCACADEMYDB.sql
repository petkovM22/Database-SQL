CREATE DATABASE SEDCACADEMYDB

CREATE TABLE Student(
ID int identity(1,1) not null,
FirstName nvarchar(100) not null,
LastName nvarchar(100) not null,
DateOfBirth date not null,
EnrolledDate date not null,
Gender nchar(1) not null,
NationalIDNumber nvarchar(50) not null,
StudentCardNumber nvarchar(20) not null
)

CREATE TABLE Teacher(
ID int identity(1,1) not null,
FirstName nvarchar(100) not null,
LastName nvarchar(100) not null,
DateOfBirth date not null,
AcademicRank nvarchar(100) not null,
HireDate date not null
)

CREATE TABLE Grade(
ID int identity(1,1) not null,
StudentID int not null,
CourseID int not null,
TeacherID int not null,
Grade nvarchar(10) not null,
Comment nvarchar(max) null,
CreatedDate date not null
)

CREATE TABLE Course(
ID int identity(1,1) not null,
[Name] nvarchar(100) not null,
Credit nvarchar(10) not null,
AcademicYear nvarchar(4) not null,
Semester nvarchar(10) not null
)

CREATE TABLE GradeDetails(
ID int identity(1,1) not null,
GradeID int not null,
AchievementTypeID int not null,
AchievementPoints decimal(5,2) not null,
AchievementMaxPoints decimal(5,2) not null,
AchievementDate date not null
)

CREATE TABLE AchievementType(
ID int identity(1,1) not null,
[Name] nvarchar(100) not null,
[Description] nvarchar(max) null,
ParticipationRate decimal(5,2) not null
)
