select dept.deptno, dept.dname, dept.loc, emp.*
    from dept left join emp
    on dept.deptno=emp.deptno
    where dept.deptno=20
    
    select emp.*
		from emp
		where sal<5000
    
    select e.*
		from (
			select emp.*
			from emp
			where sal<5000
		) e
		where sal>2500
    
    select max(sal)
    from dept left join emp
    on dept.deptno=emp.deptno
    where dept.deptno=10
    
    select *
    from emp
    where deptno=20
    and sal=(
    select max(sal)
    from dept left join emp
    on dept.deptno=emp.deptno
    where dept.deptno=20
    )
