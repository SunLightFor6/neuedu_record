package com.neusoft.mapper;

import java.util.List;

import com.neusoft.po.Dept;

public interface DeptMapper {
	public Dept findDeptEmps(int deptno) throws Exception;
	public List<Dept> deptsWithMax() throws Exception;
}
