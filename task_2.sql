/*
Task #2. Table A contains ID with appropriate parameters (category and type):
TABLE A
ID	CAT	TYPE
1	  A	  A1
2	  A	  A2
3	  A	  A3
4	  A	  (null)
Static table B contains mapping of category and type combinations to attributes:
TABLE B
CAT	TYPE	ATTR
A	  A1	  X
A	  A2	  Y
A	  ‘NA’	Z
Mapping of attributes is reached by following rules (shown in example):
IF A.CAT = ‘A’ AND A.TYPE = ‘A1’ THEN ATTR = ‘X’
ELIF A.CAT = ‘A’ AND A.TYPE = ‘A2’ THEN ATTR = ‘Y’
ELIF A.CAT = ‘A’ THEN ATTR = ‘Z’
RESULT TABLE
ID	ATTR
1	  X
2	  Y
3	  Z
4	  Z

Write a SQL query to get attribute for each ID. Query must be universal and should not depend on specific values in tables.
*/

SELECT ID,
  CASE WHEN AA.ATTR IS NOT NULL THEN AA.ATTR
       WHEN AA.ATTR IS NULL     THEN (SELECT ATTR FROM B WHERE B.CAT = AA.CAT AND B.TYPE = ‘NA’) END ATTR
    FROM (SELECT A.ID, A.CAT, B.ATTR
	    FROM A LEFT JOIN B ON A.CAT = B.CAT AND A.TYPE = B.TYPE) AA;
