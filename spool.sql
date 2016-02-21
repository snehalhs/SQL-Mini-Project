SQL> /* Query for Question 2 */
SQL> SELECT PHONE FROM FAMILYPACKAGE WHERE ID IN (SELECT FAMILY_ID FROM RECCENTERMEMBER WHERE L_NAME='O’Shea');

PHONE         
---------------
312-555-9403   

SQL> /* Query for Question 3 */
SQL> SELECT  TITLE,F_NAME, L_NAME FROM (SELECT * FROM INSTRUCTOR S INNER JOIN CLASS A ON S.ID=A.INSTRUCTOR);

TITLE
--------------------------------------------------------------------------------
F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
Team games                                                                      
Annie                                                                           
Heard                                                                           

Yoga (Adv.)                                                                     
Annie                                                                           
Heard                                                                           

TITLE
--------------------------------------------------------------------------------
F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
Chinese (Intro.)                                                                
Annie                                                                           
Heard                                                                           

Photography                                                                     
Annie                                                                           
Heard                                                                           

TITLE
--------------------------------------------------------------------------------
F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
Yoga (Intro.)                                                                   
Monica                                                                          
Knapp                                                                           

Needle Points                                                                   
Monica                                                                          
Knapp                                                                           

TITLE
--------------------------------------------------------------------------------
F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
Chinese (Intro.)                                                                
James                                                                           
Robertson                                                                       

Oil painting                                                                    
James                                                                           
Robertson                                                                       

TITLE
--------------------------------------------------------------------------------
F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
Woodworking                                                                     
April                                                                           
O’Shea                                                                          

Origami (Adv.)                                                                  
April                                                                           
O’Shea                                                                          

 10 rows selected 

SQL> /* Query for Question 4 */
SQL> SELECT F_NAME,L_NAME FROM RECCENTERMEMBER WHERE FAMILY_ID IS NULL;

F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
Vijay                                                                           
Gupta                                                                           

Harry                                                                           
Smith                                                                           

Lisa                                                                            
Brown                                                                           


F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
Laura                                                                           
Dickinson                                                                       

Emily                                                                           
Citrin                                                                          

Cassandra                                                                       
McDonald                                                                        


F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
Leslie                                                                          
Blackburn                                                                       

Sandra                                                                          
Svoboda                                                                         


 8 rows selected 

SQL> ---->4
SQL> /* Query for Question 5 */
SQL> Select F_NAME, L_NAME, TYPE FROM(SELECT * FROM RECCENTERMEMBER S JOIN ENROLLMENT A ON S.ID=A.MEMBER_ID JOIN CLASS C ON A.CLASS_ID = C.ID) WHERE TYPE='Craft' OR TYPE='Art';

F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
TYPE
--------------------------------------------------------------------------------
Abby                                                                            
Smith                                                                           
Art                                                                             

Abby                                                                            
Smith                                                                           
Craft                                                                           

F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
TYPE
--------------------------------------------------------------------------------
Mike                                                                            
O’Shea                                                                          
Craft                                                                           

April                                                                           
O’Shea                                                                          
Craft                                                                           

F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
TYPE
--------------------------------------------------------------------------------
Harry                                                                           
Tang                                                                            
Art                                                                             

Harry                                                                           
Tang                                                                            
Craft                                                                           

F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
TYPE
--------------------------------------------------------------------------------
Dongmei                                                                         
Tang                                                                            
Craft                                                                           

Laura                                                                           
Dickinson                                                                       
Craft                                                                           

F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
TYPE
--------------------------------------------------------------------------------
Victor                                                                          
Garcia                                                                          
Art                                                                             

Emily                                                                           
Citrin                                                                          
Craft                                                                           

F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
TYPE
--------------------------------------------------------------------------------
Maria                                                                           
Garcia                                                                          
Craft                                                                           

Leslie                                                                          
Blackburn                                                                       
Art                                                                             

F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
TYPE
--------------------------------------------------------------------------------
Sandra                                                                          
Svoboda                                                                         
Art                                                                             


 13 rows selected 

SQL> /* Query for Question 6 */
SQL> select distinct r.f_name, r.l_name from RECCENTERMEMBER r, class c, enrollment e where r.id =e.member_id and c.id= e.class_id and c.year = 2008 and r.id not in (select r.id from RECCENTERMEMBER r, class c, enrollment e where r.id =e.member_id and c.id= e.class_id and c.year in (2009,2010));

F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
Lisa                                                                            
Tang                                                                            

Leslie                                                                          
Blackburn                                                                       

Sandra                                                                          
Svoboda                                                                         


SQL> /* Query for Question 7 */
SQL> SELECT DISTINCT F_NAME, L_NAME, DESCRIPTION FROM CLASS a JOIN INSTRUCTOR b ON a.INSTRUCTOR = b.ID JOIN TYPE c ON a.TYPE = c.TYPE WHERE a.YEAR='2009' AND SEASON='Fall' MINUS SELECT DISTINCT F_NAME, L_NAME, SEASON, DESCRIPTION FROM CLASS a JOIN INSTRUCTOR b ON a.INSTRUCTOR = b.ID JOIN TYPE c ON a.TYPE = c.TYPE WHERE a.YEAR='2009' AND SEASON='Summer';

F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
April                                                                           
O’Shea                                                                                                                                                     
Knitting, sewing, ect                                                           


F_NAME
--------------------------------------------------------------------------------
L_NAME
--------------------------------------------------------------------------------
SEASON
--------------------------------------------------------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
Monica                                                                          
Knapp                                                                           
Fall                                                                            
Any courses having to do with physical activity                                 


SQL> /* Query for Question 8*/
SQL> SELECT * FROM TYPE WHERE TYPE IN(SELECT DISTINCT TYPE FROM CLASS WHERE YEAR='2008' OR YEAR='2009');

TYPE
------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
Art                            
Paining, sculpting, ect                                                         

Craft                          
Knitting, sewing, ect                                                           

Exercise                       
Any courses having to do with physical activity                                 


TYPE
------------------------------
DESCRIPTION
--------------------------------------------------------------------------------
Kids                           
Courses geared towards children 13 and younger                                  

Languages                      
Anything to do with writing, literature, or communication                       


SQL> spool off
