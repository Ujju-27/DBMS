1
SQL> conn
Enter user-name: CSEJ69
Enter password:
Connected.

2
SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
STUDENT                        TABLE
STUDENTS                       TABLE

3
SQL> create table Car(ModelNo varchar2(10) primary key, ModelName varchar2(10) unique,Company varchar2(17) not NULL, EngineCapacity varchar2(10) 
check(EngineCapacity >1000) , color varchar2(10), doors number check(doors>1),weight number check(weight >1000),TopSpeed number check(TopSpeed <500), 
RPM number check(RPM > 5000), costprice number, saleprice number);

Table created.

4
SQL> desc car;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 MODELNO                                   NOT NULL VARCHAR2(10)
 MODELNAME                                          VARCHAR2(10)
 COMPANY                                   NOT NULL VARCHAR2(17)
 ENGINECAPACITY                                     VARCHAR2(10)
 COLOR                                              VARCHAR2(10)
 DOORS                                              NUMBER
 WEIGHT                                             NUMBER
 TOPSPEED                                           NUMBER
 RPM                                                NUMBER
 COSTPRICE                                          NUMBER
 SALEPRICE                                          NUMBER

5
SQL> insert into Car values('ZX71','i20', 'Hundai','1300', 'Gray', 4,1300,180,5500,900000,950000);

1 row created.

SQL> insert into Car values('AY27','Thar', 'Mahindra','2184', 'Black', 4,1400,220,6500,1500000,2550000);

1 row created.

SQL> insert into Car values('K10','Alto', 'Maruti Suzuki','1100', 'white', 4,1100,150,6000,399990,410000);

1 row created.

SQL> insert into Car values('VLSI12','Honda City', 'Honda','1250', 'Grey', 4,1100,150,7500,500000,550000);

1 row created.

SQL> insert into Car values('YN43','Swift', 'Maruti Suzuki','1200', 'Brown', 4,1200,160,6000,700000,750000);

1 row created.

SQL> insert into Car values('NxEr','Aventador', 'Lamborghini','2184', 'Green', 4,1950,240,8000,45000000,75000000);

1 row created.

SQL> insert into Car values('ZY15','S-Presso', 'Maruti Suzuki','1300', 'Yellow', 4,1400,140,5300,475000,520000);

1 row created.

6 (1)
SQL> set linesize 400;
SQL> set pagesize 400;
SQL> select * from Car;
MODELNO    MODELNAME  COMPANY           ENGINECAPA COLOR           DOORS     WEIGHT   TOPSPEED    RPM  COSTPRICE  SALEPRICE
---------- ---------- ----------------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
ZX71       i20        Hundai            1300       Gray                4       1300    180       5500     900000     950000
AY27       Thar       Mahindra          2184       Black               4       1400    220       6500    1500000    2550000
K10        Alto       Maruti Suzuki     1100       white               4       1100    150       6000     399990     410000
VLSI12     Honda City Honda             1250       Grey                4       1100    150       7500     500000     550000
YN43       Swift      Maruti Suzuki     1200       Brown               4       1200    160       6000     700000     750000
NxEr       Aventador  Lamborghini       2184       Green               4       1950    240       8000   45000000   75000000
ZY15       S-Presso   Maruti Suzuki     1300       Yellow              4       1400    140       5300     475000     520000

7 rows selected.
                                                                              
6 (2)
SQL> select ModelName from Car where Company='Maruti Suzuki';

MODELNAME
----------
Alto
Swift
S-Presso

6(3)
SQL> select * from Car where EngineCapacity>2000;

MODELNO    MODELNAME  COMPANY           ENGINECAPA COLOR           DOORS     WEIGHT   TOPSPEED            RPM  COSTPRICE  SALEPRICE
---------- ---------- ----------------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
AY27       Thar       Mahindra          2184       Black               4       1400    220       6500    1500000    2550000
NxEr       Aventador  Lamborghini       2184       Green               4       1950    240       8000   45000000   75000000

6(4)
SQL> select * from Car where Color='White';

no rows selected
  
6(5)
SQL> select * from Car where CostPrice>400000;

MODELNO    MODELNAME  COMPANY           ENGINECAPA COLOR           DOORS     WEIGHT   TOPSPEED            RPM  COSTPRICE  SALEPRICE
---------- ---------- ----------------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
ZX71       i20        Hundai            1300       Gray                4       1300    180       5500     900000     950000
AY27       Thar       Mahindra          2184       Black               4       1400    220       6500    1500000    2550000
VLSI12     Honda City Honda             1250       Grey                4       1100    150       7500     500000     550000
YN43       Swift      Maruti Suzuki     1200       Brown               4       1200    160       6000     700000     750000
NxEr       Aventador  Lamborghini       2184       Green               4       1950    240       8000   45000000   75000000
ZY15       S-Presso   Maruti Suzuki     1300       Yellow              4       1400    140       5300     475000     520000

6 rows selected.

6(6)
SQL> select CostPrice, SalePrice, SalePrice-CostPrice as Profit
  2  from car;

 COSTPRICE  SALEPRICE     PROFIT
---------- ---------- ----------
    900000     950000      50000
   1500000    2550000    1050000
    399990     410000      10010
    500000     550000      50000
    700000     750000      50000
  45000000   75000000   30000000
    475000     520000      45000

6(7)
SQL> select ModelName from Car Order by ModelName;

MODELNAME
----------
Alto
Aventador
Honda City
S-Presso
Swift
Thar
i20

7 rows selected.

7
SQL> Create table vehicle as select TopSpeed, Doors, CostPrice, ModelName, Company, RPM, EngineCapacity, Color, ModelNo, Weight, SalePrice from car where 1=0;

Table created.

8
SQL> desc vehicle;
 Name                          Null?          Type
 ---------------------------------------------------------------------
 TOPSPEED                                     NUMBER
 DOORS                                        NUMBER
 COSTPRICE                                    NUMBER
 MODELNAME                                    VARCHAR2(10)
 COMPANY                       NOT NULL       VARCHAR2(17)
 RPM                                          NUMBER
 ENGINECAPACITY                               VARCHAR2(10) 
 COLOR                                        VARCHAR2(10)
 MODELNO                                      VARCHAR2(10)
 WEIGHT                                       NUMBER
 SALEPRICE                                    NUMBER

9
SQL> insert into vehicle(TopSpeed, Doors, CostPrice,ModelName, Company, RPM, EngineCapacity, Color, ModelNo, Weight,SalePrice)
  2  select TopSpeed, Doors, CostPrice,ModelName, Company, RPM, EngineCapacity, Color, ModelNo, Weight,SalePrice from car
  3  order by dbms_random.random;

7 rows created.

10(1)
SQL> select * from vehicle;

  TOPSPEED      DOORS  COSTPRICE MODELNAME  COMPANY                  RPM ENGINECAPA COLOR      MODELNO            WEIGHT  SALEPRICE
---------- ---------- ---------- ---------- ----------------- ---------- ---------- ---------- ---------- ---------- ----------
       150          4     399990 Alto       Maruti Suzuki           6000 1100           white      K10              1100     410000
       220          4    1500000 Thar       Mahindra                6500 2184           Black      AY27             1400    2550000
       140          4     475000 S-Presso   Maruti Suzuki           5300 1300           Yellow     ZY15             1400     520000
       180          4     900000 i20        Hundai                  5500 1300           Gray       ZX71             1300     950000
       150          4     500000 Honda City Honda                   7500 1250           Grey       VLSI12           1100     550000
       240          4   45000000 Aventador  Lamborghini             8000 2184           Green      NxEr             1950   75000000
       160          4     700000 Swift      Maruti Suzuki           6000 1200           Brown      YN43             1200     750000

7 rows selected.
  
10 (2)
SQL> select ModelName from vehicle where Company='Maruti Suzuki';

MODELNAME
----------
Alto
S-Presso
Swift
 
10(2)
SQL> select * from vehicle where EngineCapacity>2000;

MODELNO    MODELNAME  COMPANY           ENGINECAPA COLOR           DOORS     WEIGHT   TOPSPEED    RPM    COSTPRICE  SALEPRICE
---------- ---------- ----------------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
AY27       Thar       Mahindra          2184       Black               4       1400    220       6500    1500000    2550000
NxEr       Aventador  Lamborghini       2184       Green               4       1950    240       8000   45000000   75000000

10(3)
SQL> select * from vehicle where color='White';

no rows selected

10(4)
SQL> select * from vehicle where CostPrice>400000;

MODELNO    MODELNAME  COMPANY           ENGINECAPA COLOR           DOORS     WEIGHT   TOPSPEED    RPM  COSTPRICE  SALEPRICE
---------- ---------- ----------------- ---------- ---------- ---------- ---------- ---------- ---------- ---------- ----------
VLSI12     Honda City Honda             1250       Grey                4       1100    150       7500     500000     550000
AY27       Thar       Mahindra          2184       Black               4       1400    220       6500    1500000    2550000
ZY15       S-Presso   Maruti Suzuki     1300       Yellow              4       1400    140       5300     475000     520000
YN43       Swift      Maruti Suzuki     1200       Brown               4       1200    160       6000     700000     750000
ZX71       i20        Hundai            1300       Gray                4       1300    180       5500     900000     950000
NxEr       Aventador  Lamborghini       2184       Green               4       1950    240       8000   45000000   75000000

6 rows selected.

10(5)
SQL> select costprice, saleprice, saleprice-costprice as profit from Vehicle;

 COSTPRICE  SALEPRICE     PROFIT
---------- ---------- ----------
    500000     550000      50000
    399990     410000      10010
   1500000    2550000    1050000
    475000     520000      45000
    700000     750000      50000
    900000     950000      50000
  45000000   75000000   30000000

7 rows selected.

10(6)
SQL> select ModelName from vehicle order by ModelName;

MODELNAME
----------
Alto
Aventador
Honda City
S-Presso
Swift
Thar
i20

7 rows selected.

SQL> commit;

Commit complete.

