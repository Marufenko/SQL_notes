/*
How parse cell like: 0,0005;0,000154;-0,01001 etc 
to column like:
0,0005
0,000154
-0,01001
*/

With a as (select 1 as id, ‘0.00005;0.0007;0.0009’ as data from dual)
Union all (select 2 as id, ‘0.00013;0.000255;-0.0007’ as data from dual),

Select id, column_value as data
From a, xmltable((‘”’ || REPLACE(to_char(data), ‘;’, ‘”,”’));
