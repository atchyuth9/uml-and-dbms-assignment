SQL> select ename,dname,loc
  2  from emp,dept
  3  where emp.deptno=dept.deptno;

ENAME      DNAME          LOC
---------- -------------- -------------
SMITH      RESEARCH       DALLAS
ALLEN      SALES          CHICAGO
WARD       SALES          CHICAGO
JONES      RESEARCH       DALLAS
MARTIN     SALES          CHICAGO
BLAKE      SALES          CHICAGO
CLARK      ACCOUNTING     NEW YORK
SCOTT      RESEARCH       DALLAS
KING       ACCOUNTING     NEW YORK
TURNER     SALES          CHICAGO
ADAMS      RESEARCH       DALLAS
JAMES      SALES          CHICAGO
FORD       RESEARCH       DALLAS
MILLER     ACCOUNTING     NEW YORK

14 rows selected.

SQL> select ename,dname,loc
  2  from emp left outer join dept
  3  on emp.deptno=dept.deptno;

ENAME      DNAME          LOC
---------- -------------- -------------
SMITH      RESEARCH       DALLAS
ALLEN      SALES          CHICAGO
WARD       SALES          CHICAGO
JONES      RESEARCH       DALLAS
MARTIN     SALES          CHICAGO
BLAKE      SALES          CHICAGO
CLARK      ACCOUNTING     NEW YORK
SCOTT      RESEARCH       DALLAS
KING       ACCOUNTING     NEW YORK
TURNER     SALES          CHICAGO
ADAMS      RESEARCH       DALLAS
JAMES      SALES          CHICAGO
FORD       RESEARCH       DALLAS
MILLER     ACCOUNTING     NEW YORK

14 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select ename,dname,loc
  2  from emp right outer join dept
  3* on emp.deptno=dept.deptno
SQL> /

ENAME      DNAME          LOC
---------- -------------- -------------
CLARK      ACCOUNTING     NEW YORK
KING       ACCOUNTING     NEW YORK
MILLER     ACCOUNTING     NEW YORK
JONES      RESEARCH       DALLAS
FORD       RESEARCH       DALLAS
ADAMS      RESEARCH       DALLAS
SMITH      RESEARCH       DALLAS
SCOTT      RESEARCH       DALLAS
WARD       SALES          CHICAGO
TURNER     SALES          CHICAGO
ALLEN      SALES          CHICAGO
JAMES      SALES          CHICAGO
BLAKE      SALES          CHICAGO
MARTIN     SALES          CHICAGO
           OPERATIONS     BOSTON

15 rows selected.

SQL> ed
Wrote file afiedt.buf

  1  select ename,dname,loc
  2  from emp full outer join dept
  3* on emp.deptno=dept.deptno
SQL> /

ENAME      DNAME          LOC
---------- -------------- -------------
SMITH      RESEARCH       DALLAS
ALLEN      SALES          CHICAGO
WARD       SALES          CHICAGO
JONES      RESEARCH       DALLAS
MARTIN     SALES          CHICAGO
BLAKE      SALES          CHICAGO
CLARK      ACCOUNTING     NEW YORK
SCOTT      RESEARCH       DALLAS
KING       ACCOUNTING     NEW YORK
TURNER     SALES          CHICAGO
ADAMS      RESEARCH       DALLAS
JAMES      SALES          CHICAGO
FORD       RESEARCH       DALLAS
MILLER     ACCOUNTING     NEW YORK
           OPERATIONS     BOSTON

15 rows selected.
