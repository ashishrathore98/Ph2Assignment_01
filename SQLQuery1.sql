CREATE DATABASE Studentsdb ON PRIMARY 
(NAME = 'Custs_Db', FILENAME = 'D:\SimpliLearn Course\Phase2 Training\Day1\Assignment_01\Student_Db.mdf',SIZE = 24MB , MAXSIZE = 32MB, FILEGROWTH = 8MB)
LOG ON
(NAME = 'Custs_log', FILENAME = 'D:\SimpliLearn Course\Phase2 Training\Day1\Assignment_01\Student_log.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS;

use Studentsdb
create table StudentsRegistrationV2
(StudentId int not null,
CourseCode nvarchar(50) not null,
RegistrationDate date,
constraint pk_Students primary key (StudentId,CourseCode)
);

insert into StudentsRegistrationV2 values ('1','1122','5/5/2023')
insert into StudentsRegistrationV2 values (2,'1133','05/06/2023')
insert into StudentsRegistrationV2(StudentId,CourseCode,RegistrationDate) values (2,'1122','05/06/2023'),(3,'1133','05/06/2023'),(4,'1123','05/06/2023')


select * from StudentsRegistrationV2
