1.
SQL> conn
Enter user-name: CSEJ69
Enter password:
Connected.

2.
SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
STUDENTS                       TABLE

3.
SQL> show user;
USER is "CSEJ69"

4.
SQL> select sysdate from dual;

SYSDATE
---------
19-SEP-23

5.
SQL> clear screen;

6.


7.
SQL> select 2+2 from dual;

       2+2
----------
         4

8.
SQL> select 2*2 from dual;

       2*2
----------
         4

9.
SQL> select 7-2 from dual;

       7-2
----------
         5

10.
SQL> select 8/2 from dual;

       8/2
----------
         4

11.
SQL> create table student(rollno number, name varchar2(10), city varchar2(10));

Table created.

12.
SQL> desc student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER
 NAME                                               VARCHAR2(10)
 CITY                                               VARCHAR2(10)

13.
SQL> select * from student;

no rows selected

14.
SQL> insert into student values(1, 'Amit','Dehradun');

1 row created.

SQL>  insert into student values(2, 'Kapil','Meerut');

1 row created.

SQL>  insert into student values(3, '','Dehradun');

1 row created.

SQL>  insert into student values(4, 'Amit','');

1 row created.

SQL>  insert into student values(5, '','Delhi');

1 row created.

15.
SQL> select * from student;

    ROLLNO NAME       CITY
---------- ---------- ----------
         1 Amit       Dehradun
         2 Kapil      Meerut
         3            Dehradun
         4 Amit           
         5            Delhi
16.
SQL> alter table student add email varchar2(15);

Table altered.

17.
 SQL> select * from student;

    ROLLNO NAME       CITY       EMAIL
---------- ---------- ---------- ---------------
         1 Amit       Dehradun
         2 Kapil      Meerut
         3            Dehradun
         4 Amit       
         5            Dehradun

18.
SQL> desc student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER
 NAME                                               VARCHAR2(10)
 CITY                                               VARCHAR2(10)
 EMAIL                                              VARCHAR2(15)

19.
SQL> update student set email = 'btech@gmail.com';

5 rows updated.

20.
SQL> select * from student;

    ROLLNO NAME       CITY       EMAIL
---------- ---------- ---------- ---------------
         1 Amit       Dehradun   btech@gmail.com 
         2 Kapil      Meerut     btech@gmail.com 
         3            Dehradun   btech@gmail.com 
         4 Amit                  btech@gmail.com 
         5            Dehradun   btech@gmail.com 

21.
SQL> rollback;

Rollback complete.

22.
SQL> select * from student;
  ROLLNO NAME       CITY       EMAIL
---------- ---------- ---------- ---------------
         1 Amit       Dehradun
         2 Kapil      Meerut
         3            Dehradun
         4 Amit       
         5            Dehradun

23.
SQL> desc student;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 ROLLNO                                             NUMBER
 NAME                                               VARCHAR2(10)
 CITY                                               VARCHAR2(10)
 EMAIL                                              VARCHAR2(15)

24.
SQL> update student set email='abc@xyz' where name ='Amit';

2 rows updated.

25.
SQL> select * from student;
 ROLLNO NAME       CITY          EMAIL
---------- ---------- ---------- ---------------
         1 Amit       Dehradun   abc@xyz 
         2 Kapil      Meerut
         3            Dehradun   abc@xyz
         4 Amit       
         5            Dehradun

26.
SQL> select * from student;
 ROLLNO NAME       CITY          EMAIL
---------- ---------- ---------- ---------------
         1 Amit       Dehradun   abc@xyz
         2 kapil      Meerut     kapil@gmail.com
         3 Rohan      Dehradun   abcd@gmail.com
         4 Amit       tehri      abc@xyz
         5 titu       Delhi      ghyu@gmail.com
         6 Rohan      Delhi      yut@123.com
         7 Dekatsu    wearson    23456@.com
         8 Mathew     Berkeley   Mat123@.com
         9 peter      california peter5454@.com
        10 tikatsu    Xuiyeng    tit@gmail.com

10 rows selected.

27.
SQL> commit;

Commit complete.

28.
SQL> select * from student;

    ROLLNO NAME       CITY       EMAIL
---------- ---------- ---------- ---------------
         1 Amit       Dehradun   abc@xyz
         2 kapil      Meerut     kapil@gmail.com
         3 Rohan      Dehradun   abcd@gmail.com
         4 Amit       tehri      abc@xyz
         5 titu       Delhi      ghyu@gmail.com
         6 Rohan      Delhi      yut@123.com
         7 Dekatsu    wearson    23456@.com
         8 Mathew     Berkeley   Mat123@.com
         9 peter      california peter5454@.com
        10 tikatsu    Xuiyeng    tit@gmail.com

10 rows selected.

29.
SQL> set linesize 20;

30.
SQL> select * from student;

    ROLLNO
----------
NAME
----------
CITY
----------
EMAIL
---------------
         1
Amit
Dehradun
abc@xyz


    ROLLNO
----------
NAME
----------
CITY
----------
EMAIL
---------------
         2
kapil
Meerut
kapil@gmail.com


    ROLLNO
----------
NAME
----------
CITY
----------
EMAIL
---------------
         3
Rohan
Dehradun
abcd@gmail.com


    ROLLNO
----------
NAME
----------
CITY
----------
EMAIL
---------------
         4
Amit
tehri
abc@xyz


    ROLLNO
----------
NAME
----------
CITY
----------
EMAIL
---------------
         5
titu
Delhi
ghyu@gmail.com


    ROLLNO
----------
NAME
----------
CITY
----------
EMAIL
---------------
         6
Rohan
Delhi
yut@123.com


    ROLLNO
----------
NAME
----------
CITY
----------
EMAIL
---------------
         7
Dekatsu
wearson
23456@.com


    ROLLNO
----------
NAME
----------
CITY
----------
EMAIL
---------------
         8
Mathew
Berkeley
Mat123@.com


    ROLLNO
----------
NAME
----------
CITY
----------
EMAIL
---------------
         9
peter
california
peter5454@.com


    ROLLNO
----------
NAME
----------
CITY
----------
EMAIL
---------------
        10
tikatsu
Xuiyeng
tit@gmail.com


10 rows selected.

31.
SQL> desc student;
 Name              Null?    Type
 ----------------- -------- ------------
 ROLLNO                     NUMBER
 NAME                       VARCHAR2(10)
 CITY                       VARCHAR2(10)
 EMAIL                      VARCHAR2(15)

32.
SQL> set linesize 500;

33.
SQL> select * from student;

    ROLLNO NAME       CITY       EMAIL
---------- ---------- ---------- ---------------
         1 Amit       Dehradun   abc@xyz
         2 kapil      Meerut     kapil@gmail.com
         3 Rohan      Dehradun   abcd@gmail.com
         4 Amit       tehri      abc@xyz
         5 titu       Delhi      ghyu@gmail.com
         6 Rohan      Delhi      yut@123.com
         7 Dekatsu    wearson    23456@.com
         8 Mathew     Berkeley   Mat123@.com
         9 peter      california peter5454@.com
        10 tikatsu    Xuiyeng    tit@gmail.com

10 rows selected.

34.
SQL> set pagesize 7;

35.
SQL> select * from student;

    ROLLNO NAME       CITY       EMAIL
---------- ---------- ---------- ---------------
         1 Amit       Dehradun   abc@xyz
         2 kapil      Meerut     kapil@gmail.com
         3 Rohan      Dehradun   abcd@gmail.com
         4 Amit       tehri      abc@xyz

    ROLLNO NAME       CITY       EMAIL
---------- ---------- ---------- ---------------
         5 titu       Delhi      ghyu@gmail.com
         6 Rohan      Delhi      yut@123.com
         7 Dekatsu    wearson    23456@.com
         8 Mathew     Berkeley   Mat123@.com

    ROLLNO NAME       CITY       EMAIL
---------- ---------- ---------- ---------------
         9 peter      california peter5454@.com
        10 tikatsu    Xuiyeng    tit@gmail.com

10 rows selected.

36.
SQL> set pagesize 200;

37.
SQL> select * from student;

    ROLLNO NAME       CITY       EMAIL
---------- ---------- ---------- ---------------
         1 Amit       Dehradun   abc@xyz
         2 kapil      Meerut     kapil@gmail.com
         3 Rohan      Dehradun   abcd@gmail.com
         4 Amit       tehri      abc@xyz
         5 titu       Delhi      ghyu@gmail.com
         6 Rohan      Delhi      yut@123.com
         7 Dekatsu    wearson    23456@.com
         8 Mathew     Berkeley   Mat123@.com
         9 peter      california peter5454@.com
        10 tikatsu    Xuiyeng    tit@gmail.com

10 rows selected.

38.
SQL> set heading off;

39.
SQL> select * from student;

         1 Amit       Dehradun   abc@xyz
         2 kapil      Meerut     kapil@gmail.com
         3 Rohan      Dehradun   abcd@gmail.com
         4 Amit       tehri      abc@xyz
         5 titu       Delhi      ghyu@gmail.com
         6 Rohan      Delhi      yut@123.com
         7 Dekatsu    wearson    23456@.com
         8 Mathew     Berkeley   Mat123@.com
         9 peter      california peter5454@.com
        10 tikatsu    Xuiyeng    tit@gmail.com

10 rows selected.

40.
SQL> set pause on;

41.
SQL> select * from student;

         1 Amit       Dehradun   abc@xyz
         2 kapil      Meerut     kapil@gmail.com
         3 Rohan      Dehradun   abcd@gmail.com
         4 Amit       tehri      abc@xyz
         5 titu       Delhi      ghyu@gmail.com
         6 Rohan      Delhi      yut@123.com
         7 Dekatsu    wearson    23456@.com
         8 Mathew     Berkeley   Mat123@.com
         9 peter      california peter5454@.com
        10 tikatsu    Xuiyeng    tit@gmail.com

10 rows selected.

42.
SQL> Alter table student drop column name;

Table altered.

43.
SQL> desc student;
 Name              Null?     Type
 ------------ ------------- ---------------
 ROLLNO                      NUMBER
 CITY                        VARCHAR2(10)
 EMAIL                                                                                                                                                     

44.
SQL> select * from student;


         1 Dehradun   abc@xyz
         2 Meerut     kapil@gmail.com
         3 Dehradun   abcd@gmail.com
         4 tehri      abc@xyz
         5 Delhi      ghyu@gmail.com
         6 Delhi      yut@123.com
         7 wearson    23456@.com
         8 Berkeley   Mat123@.com
         9 california peter5454@.com
        10 Xuiyeng    tit@gmail.com

10 rows selected.

45.
SQL> create table duplicate as select * from student;

Table created.

46.
SQL> truncate table student;

Table truncated.

47.
SQL> rollback;

Rollback complete.

SQL> select * from student;

no rows selected

48.
SQL> drop table student;

Table dropped.

49.
SQL> select * from student;
select * from student
              *
ERROR at line 1:
ORA-00942: table or view does not exist

50.
SQL> rollback;

Rollback complete.

SQL> select * from student;
select * from student
              *
ERROR at line 1:
ORA-00942: table or view does not exist

51.
SQL> select * from tab;


DUPLICATE                      TABLE

52.
SQL> show user;
USER is "CSJ01"

53.
SQL> quit;






