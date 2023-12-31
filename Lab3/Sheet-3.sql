Q1.

SQL> conn
Enter user-name: CSEJ69
Enter password:
Connected

Q2.
SQL> select * from tab;

no rows selected

Q3.
SQL> select user from dual;

USER
------------------------------
CSEJ69

Q4.
SQL> create table Students(Roll_No Number(6), Name varchar(15), City varchar(12), Pincode varchar(8), Age Number (2));

Table created.

Q5.
SQL> desc Students;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLL_NO                                            NUMBER(6)
 NAME                                               VARCHAR2(15)
 CITY                                               VARCHAR2(12)
 PINCODE                                            VARCHAR2(8)
 AGE                                                NUMBER(2)

Q6.
SQL> insert into students(roll_no,Name, City, Pincode, Age) values (1,'Amit','Delhi','214213',21);

1 row created.

SQL> insert into students(roll_no,Name, City, Pincode, Age) values (2,'Kumar','Bombay',NULL,25);

1 row created.

SQL> insert into students(roll_no,Name, City, Pincode, Age) values (3,'Kshitij','Madras','110101',16);

1 row created.

SQL> insert into students(roll_no,Name, City, Pincode, Age) values (4,'Puneet','Calcutta',NULL,18);

1 row created.

SQL> insert into students(roll_no,Name, City, Pincode, Age) values (5,' Rohit','Delhi','502207',19);

1 row created.

SQL> insert into students(roll_no,Name, City, Pincode, Age) values (6,'Karnal','Dehradun',NULL,28);

1 row created.

SQL> insert into students(roll_no,Name, City, Pincode, Age) values (7,'Shweta','Dehradun','98102',23);

1 row created.

SQL> insert into students(roll_no,Name, City, Pincode, Age) values (8,'Mohit','Bombay','12434',22);

1 row created.

SQL> insert into students(roll_no,Name, City, Pincode, Age) values (9,'Pankaj','Bombay',NULL,17);

1 row created.

SQL> insert into students(roll_no,Name, City, Pincode, Age) values (10,'Parul','Delhi','76312',24);

1 row created.

SQL> insert into students(roll_no,Name, City, Pincode, Age) values (11,'Rohit','Baroda','12131',29);

1 row created.

Q7.
1.SQL> select * from students;

   ROLL_NO NAME            CITY         PINCODE         AGE
---------- --------------- ------------ -------- ----------
         1 Amit            Delhi        214213           21
         2 Kumar           Bombay                        25
         3 Kshitij         Madras       110101           16
         4 Puneet          Calcutta                      18
         5 Rohit           Delhi        502207           19
         6 Karnal          Dehradun                      28
         7 Shweta          Dehradun     98102            23
         8 Mohit           Bombay       12434            22
         9 Pankaj          Bombay                        17
        10 Parul           dELhi        76312            24
        11 Rohit           Baroda       12131            29

11 rows selected.

2. SQL> select * from students where city ='Delhi';

   ROLL_NO NAME            CITY         PINCODE         AGE
---------- --------------- ------------ -------- ----------
         1 Amit            Delhi        214213           21
         5 Rohit           Delhi        502207           19

3. SQL> select * from students where name like 'A%';

   ROLL_NO NAME            CITY         PINCODE         AGE
---------- --------------- ------------ -------- ----------
         1 Amit            Delhi        214213           21

4. SQL> select * from students where name like '_a%';

   ROLL_NO NAME            CITY         PINCODE         AGE
---------- --------------- ------------ -------- ----------
         6 Karnal          Dehradun                      28
         9 Pankaj          Bombay                        17
        10 Parul           dELhi        76312            24

5. SQL> select * from students where name like '%it';

   ROLL_NO NAME            CITY         PINCODE         AGE
---------- --------------- ------------ -------- ----------
         1 Amit            Delhi        214213           21
         5 Rohit           Delhi        502207           19
         8 Mohit           Bombay       12434            22
        11 Rohit           Baroda       12131            29

6. SQL> select * from students where name like '%t';

   ROLL_NO NAME            CITY         PINCODE         AGE
---------- --------------- ------------ -------- ----------
         1 Amit            Delhi        214213           21
         4 Puneet          Calcutta                      18
         5 Rohit           Delhi        502207           19
         8 Mohit           Bombay       12434            22
        11 Rohit           Baroda       12131            29

7. SQL> select * from students where name like '%t%_';

   ROLL_NO NAME            CITY         PINCODE         AGE
---------- --------------- ------------ -------- ----------
         3 Kshitij         Madras       110101           16
         7 Shweta          Dehradun     98102            23

8. SQL> select * from students where age>25 and city = 'Dehradun';

   ROLL_NO NAME            CITY         PINCODE         AGE
---------- --------------- ------------ -------- ----------
         6 Karnal          Dehradun                      28

9. SQL> select distinct city from students;

CITY
------------
Dehradun
Bombay
Calcutta
dELhi
Delhi
Baroda
Madras

7 rows selected.

10. SQL> select * from students order by name asc;

   ROLL_NO NAME            CITY         PINCODE         AGE
---------- --------------- ------------ -------- ----------
         1 Amit            Delhi        214213           21
         6 Karnal          Dehradun                      28
         3 Kshitij         Madras       110101           16
         2 Kumar           Bombay                        25
         8 Mohit           Bombay       12434            22
         9 Pankaj          Bombay                        17
        10 Parul           dELhi        76312            24
         4 Puneet          Calcutta                      18
         5 Rohit           Delhi        502207           19
        11 Rohit           Baroda       12131            29
         7 Shweta          Dehradun     98102            23

11 rows selected.

11. SQL> select * from students where age<20 or city = 'Bombay';

   ROLL_NO NAME            CITY         PINCODE         AGE
---------- --------------- ------------ -------- ----------
         2 Kumar           Bombay                        25
         3 Kshitij         Madras       110101           16
         4 Puneet          Calcutta                      18
         5 Rohit           Delhi        502207           19
         8 Mohit           Bombay       12434            22
         9 Pankaj          Bombay                        17

6 rows selected.

12. SQL> select * from students where city != 'Dehradun';

   ROLL_NO NAME            CITY         PINCODE         AGE
---------- --------------- ------------ -------- ----------
         1 Amit            Delhi        214213           21
         2 Kumar           Bombay                        25
         3 Kshitij         Madras       110101           16
         4 Puneet          Calcutta                      18
         5 Rohit           Delhi        502207           19
         8 Mohit           Bombay       12434            22
         9 Pankaj          Bombay                        17
        10 Parul           dELhi        76312            24
        11 Rohit           Baroda       12131            29

9 rows selected.

13. SQL> select upper(name) from students;

UPPER(NAME)
---------------
AMIT
KUMAR
KSHITIJ
PUNEET
ROHIT
KARNAL
SHWETA
MOHIT
PANKAJ
PARUL
ROHIT

11 rows selected.

14.SQL> select lower(city) from students;

LOWER(CITY)
------------
delhi
bombay
madras
calcutta
delhi
dehradun
dehradun
bombay
bombay
delhi
baroda

11 rows selected.

15. SQL> select lower(name), upper(city) from students;

LOWER(NAME)     UPPER(CITY)
--------------- ------------
amit            DELHI
kumar           BOMBAY
kshitij         MADRAS
puneet          CALCUTTA
rohit           DELHI
karnal          DEHRADUN
shweta          DEHRADUN
mohit           BOMBAY
pankaj          BOMBAY
parul           DELHI
rohit           BARODA

11 rows selected.

16.
























