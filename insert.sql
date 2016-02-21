/* Snehal Sonawane */

/* Insert into Type */


INSERT INTO TYPE(TYPE,DESCRIPTION)
VALUES ('Craft','Knitting, sewing, ect');

INSERT INTO TYPE(TYPE,DESCRIPTION)
VALUES ('Art','Paining, sculpting, ect');

INSERT INTO TYPE(TYPE,DESCRIPTION)
VALUES ('Exercise','Any courses having to do with physical activity');

INSERT INTO TYPE(TYPE,DESCRIPTION)
VALUES ('Languages','Anything to do with writing, literature, or communication');

INSERT INTO TYPE(TYPE,DESCRIPTION)
VALUES ('Kids','Courses geared towards children 13 and younger');

COMMIT;

SELECT * FROM TYPE;


/* Insert into FamilyPackage */


INSERT INTO FAMILYPACKAGE(ID,ADDRESS,PHONE)
VALUES (1,'23 Beacon St. Hillside IL', '708-555-9384');


INSERT INTO FAMILYPACKAGE(ID,ADDRESS,PHONE)
VALUES (2,'4930 Dickens Ave Chicago IL', '312-555-9403');

INSERT INTO FAMILYPACKAGE(ID,ADDRESS,PHONE)
VALUES (3,'345 Fullerton St. Chicago IL', '773-555-0032');

INSERT INTO FAMILYPACKAGE(ID,ADDRESS,PHONE)
VALUES (4,'34 Maple Ln Elmhurst IL', '312-555-9382');

INSERT INTO FAMILYPACKAGE(ID,ADDRESS,PHONE)
VALUES (5,'563 Harvard Ave Lisle IL', '630-555-9321');

Commit;

select * from FAMILYPACKAGE;


/* Insert into RecCenterMember */


INSERT INTO RECCENTERMEMBER 
VALUES(1,'Abby','Smith','5/21/1983  00:00:00',1);

INSERT INTO RECCENTERMEMBER 
VALUES(2,'Mike','O�Shea','7/4/1968',2);


INSERT INTO RECCENTERMEMBER 
VALUES(3,'April','O�Shea','6/23/1954',2);

INSERT INTO RECCENTERMEMBER 
VALUES(4,'Vijay','Gupta','8/1/1945', NULL);

INSERT INTO RECCENTERMEMBER 
VALUES(5,'Lisa','Tang','11/5/2000',3);

INSERT INTO RECCENTERMEMBER 
VALUES(6,'Harry','Smith','2/3/1972', NULL);

INSERT INTO RECCENTERMEMBER
VALUES(7,'Justin','Smith','2/2/1983',1);

INSERT INTO RECCENTERMEMBER 
VALUES(8,'Lisa','Brown','12/28/1959',NULL);

INSERT INTO RECCENTERMEMBER
VALUES(9,'Harry','Tang','4/3/1948',3);

INSERT INTO RECCENTERMEMBER
VALUES(10,'Dongmei','Tang','6/2/1942',3);

INSERT INTO RECCENTERMEMBER 
VALUES(11,'Laura','Dickinson','11/11/1998',NULL);

INSERT INTO RECCENTERMEMBER 
VALUES(12,'Victor','Garcia','4/5/2006',5);

INSERT INTO RECCENTERMEMBER 
VALUES(13,'Emily','Citrin','5/4/1993',NULL);

INSERT INTO RECCENTERMEMBER 
VALUES(14,'Maria','Garcia','7/7/2007',5);

INSERT INTO RECCENTERMEMBER 
VALUES(15,'Cassie','O�Shea','6/2/1988',2);

INSERT INTO RECCENTERMEMBER 
VALUES(16,'Cassandra','McDonald','7/1/1990',NULL);

INSERT INTO RECCENTERMEMBER 
VALUES(17,'Jessie','Knapp','9/12/1981',4);

INSERT INTO RECCENTERMEMBER 
VALUES(18,'Monica','Knapp','9/17/1982',4);

INSERT INTO RECCENTERMEMBER 
VALUES(19,'Leslie','Blackburn','1/19/1986',NULL);

INSERT INTO RECCENTERMEMBER 
VALUES(20,'Sandra','Svoboda','9/9/1999',NULL);

COMMIT;

Select * from RECCENTERMEMBER;


/* Insert into Instructor */



INSERT INTO INSTRUCTOR 
VALUES(1,'Annie','Heard',NULL);

INSERT INTO INSTRUCTOR 
VALUES(2,'Monica','Knapp',18);

INSERT INTO INSTRUCTOR
VALUES(3,'James','Robertson',NULL);

INSERT INTO INSTRUCTOR 
VALUES(4,'April','O�Shea',2);

INSERT INTO INSTRUCTOR 
VALUES(5,'Harry','Tang',9);

COMMIT;

SELECT * FROM INSTRUCTOR;


/* Insert into Class */


INSERT INTO CLASS 
VALUES(1,'Needle Points','Craft',2,'Spring',2010);

INSERT INTO CLASS 
VALUES(2,'Photography','Art',1,'Fall',2008);

INSERT INTO CLASS 
VALUES(3,'Woodworking','Craft',4,'Spring',2009);

INSERT INTO CLASS 
VALUES(4,'Chinese (Intro.)','Languages',1,'Winter',2008);

INSERT INTO CLASS 
VALUES(5,'Team games','Kids',1,'Summer',2008);

INSERT INTO CLASS
VALUES(6,'Yoga (Intro.)','Exercise',2,'Fall',2009);

INSERT INTO CLASS 
VALUES(7,'Origami (Adv.)','Craft',4,'Fall',2009);

INSERT INTO CLASS 
VALUES(8, 'Oil painting','Art',3,'Spring',2009);

INSERT INTO CLASS 
VALUES(9,'Yoga (Adv.)','Exercise',1,'Spring',2008);

INSERT INTO CLASS 
VALUES(10,'Chinese (Intro.)','Languages',3,'Spring',2009);

COMMIT;

SELECT * FROM CLASS;


/* Insert into Enrollment */


INSERT INTO ENROLLMENT 
VALUES(3,3,20);

INSERT INTO ENROLLMENT 
VALUES(1,9,15);

INSERT INTO ENROLLMENT 
VALUES(2,9,20);

INSERT INTO ENROLLMENT 
VALUES(4,10,30);

INSERT INTO ENROLLMENT 
VALUES(3,10,10);

INSERT INTO ENROLLMENT 
VALUES(5,5,10);

INSERT INTO ENROLLMENT 
VALUES(4,9,30);


INSERT INTO ENROLLMENT 
VALUES(1,11,25);

INSERT INTO ENROLLMENT 
VALUES(2,19,40);

INSERT INTO ENROLLMENT 
VALUES(7,14,10);

INSERT INTO ENROLLMENT 
VALUES(8,12,5);

INSERT INTO ENROLLMENT 
VALUES(1,1,30);

INSERT INTO ENROLLMENT 
VALUES(6,1,15);

INSERT INTO ENROLLMENT 
VALUES(9,1,20);

INSERT INTO ENROLLMENT 
VALUES(8,1,25);

INSERT INTO ENROLLMENT 
VALUES(1,13,18);

INSERT INTO ENROLLMENT 
VALUES(2,20,9);

INSERT INTO ENROLLMENT
VALUES(10,4,15);

INSERT INTO ENROLLMENT 
VALUES(1,2,3);

COMMIT;

SELECT * FROM ENROLLMENT;
