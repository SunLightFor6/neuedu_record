package com.neusoft.mapper;

import java.util.List;

import com.neusoft.po.Emp;
import com.neusoft.vo.EmpDeptVO;

public interface EmpMapper {
	public List<Emp> findAll() throws Exception;
	public List<EmpDeptVO> findEmpDeptAll() throws Exception;
	public List<Emp> findEmpDeptAll2() throws Exception;
	public List<Emp> findBetween() throws Exception;
	public List<Emp> maxEmpsOfDept(int deptno) throws Exception;
}
