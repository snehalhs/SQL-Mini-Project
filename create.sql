/* Snehal Sonawane */

spool on;

spool "C:\snehal\CS425\sqlhw1_Sonawane\createoutput.txt";
/* Create table Type */

CREATE TABLE Type
(
type VARCHAR(30) NOT NULL PRIMARY KEY,
description VARCHAR(255) NOT NULL
);

/* Create table FamilyPackage */

CREATE TABLE FamilyPackage
(
id int NOT NULL PRIMARY KEY,
address VARCHAR(60) NOT NULL,
phone VARCHAR(15) NOT NULL UNIQUE
);


/* Create table RecCenterMember */

CREATE TABLE RecCenterMember
(
id int NOT NULL PRIMARY KEY,
f_name VARCHAR(255) NOT NULL,
l_name VARCHAR(255) NOT NULL,
dob VARCHAR(255) NOT NULL,
family_id int,
FOREIGN KEY (family_id) REFERENCES FamilyPackage(id)
);

/* Create table Instructor */

CREATE TABLE Instructor
(
id int NOT NULL PRIMARY KEY,
f_name VARCHAR(255) NOT NULL,
l_name VARCHAR(255) NOT NULL,
member_id int ,
FOREIGN KEY (member_id) REFERENCES RecCenterMember(id)
);

/* Create table Class */

CREATE TABLE Class
(
id int NOT NULL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
type VARCHAR(255) NOT NULL,
instructor int NOT NULL,
season VARCHAR(255) NOT NULL,
year int NOT NULL,
FOREIGN KEY (type) references Type(type),
FOREIGN KEY (instructor) references Instructor(id),
CONSTRAINT seasonCheck CHECK(season='Spring' or season='Fall' or season='Summer' or season='Winter')
);

/* Create table Enrollment */

CREATE TABLE Enrollment 
(
class_id int NOT NULL,
member_id int NOT NULL,
cost int NOT NULL,
PRIMARY KEY(class_id,member_id),
FOREIGN KEY(class_id) REFERENCES Class(id),
FOREIGN KEY(member_id) REFERENCES RecCenterMember(id)
);

spool off;