Select rpad(‘1’,level,’1’)
From dual
Connect by level <= 10;
