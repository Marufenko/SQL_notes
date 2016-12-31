/*
Task #1. Table A contains IDs of classes and their subclasses:
TABLE A
ID_CLASS	ID_SUBCLASS
1       	1.1
1       	1.2
2	        2.1

Table B contains parameters for all IDs, both classes and subclasses:
TABLE B
ID	PARAMETER
1	      A
2     	B
1.1	    C
1.2	    D
2.1	    E

Write a SQL query which returns parameters for each class and subclass in such view:
RESULT TABLE
ID_CLASS	PARAMETER_CLASS	ID_SUBCLASS	PARAMETER_SUBCLASS
1	        A	               1.1	      C
1	        A	               1.2	      D
2	        B	               2.1	      E
*/

SELECT A.ID_CLASS ID_CLASS, 
       B1.PARAMETER PARAMETER_CLASS, 
       A.ID_SUBCLASS ID_SUBCLASS, 
       B2.PARAMETER PARAMETER_SUBCLASS
FROM A JOIN B B1 ON A.ID_CLASS = B1.ID 
 JOIN B B2 ON A.ID_SUBCLASS = B2.ID;
