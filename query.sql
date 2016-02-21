/*..................Snehal Sonawane....................*/

spool on;

spool "C:\snehal\CS425\sqlhw1_Sonawane\spool.txt";



/* Query for Question 2 */
SELECT PHONE FROM FAMILYPACKAGE WHERE ID IN (SELECT FAMILY_ID FROM RECCENTERMEMBER WHERE L_NAME='O’Shea');

/* Query for Question 3 */
 SELECT  TITLE,F_NAME, L_NAME FROM (SELECT * FROM INSTRUCTOR S INNER JOIN CLASS A ON S.ID=A.INSTRUCTOR);

/* Query for Question 4 */

  SELECT F_NAME,L_NAME FROM RECCENTERMEMBER WHERE FAMILY_ID IS NULL;---->4

/* Query for Question 5 */
 
  Select F_NAME, L_NAME, TYPE FROM(SELECT * FROM RECCENTERMEMBER S JOIN ENROLLMENT A ON S.ID=A.MEMBER_ID JOIN CLASS C ON A.CLASS_ID = C.ID) WHERE TYPE='Craft' OR TYPE='Art';
 

/* Query for Question 6 */
 
 select distinct r.f_name, r.l_name from RECCENTERMEMBER r, class c, enrollment e where r.id =e.member_id and c.id= e.class_id and c.year = 2008 and r.id not in (select r.id from RECCENTERMEMBER r, class c, enrollment e where r.id =e.member_id and c.id= e.class_id and c.year in (2009,2010));
 
 /* Query for Question 7 */

SELECT DISTINCT F_NAME, L_NAME, SEASON, DESCRIPTION FROM CLASS a JOIN INSTRUCTOR b ON a.INSTRUCTOR = b.ID JOIN TYPE c ON a.TYPE = c.TYPE WHERE a.YEAR='2009' AND SEASON='Fall' MINUS SELECT DISTINCT F_NAME, L_NAME, SEASON, DESCRIPTION FROM CLASS a JOIN INSTRUCTOR b ON a.INSTRUCTOR = b.ID JOIN TYPE c ON a.TYPE = c.TYPE WHERE a.YEAR='2009' AND SEASON='Summer';

 /* Query for Question 8*/

SELECT * FROM TYPE WHERE TYPE IN(SELECT DISTINCT TYPE FROM CLASS WHERE YEAR='2008' OR YEAR='2009');

spool off;







