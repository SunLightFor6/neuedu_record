package com.neusoft.service;

import java.util.List;

import com.neusoft.po.Dept;

public interface DeptService {
	public Dept findDeptEmps(int deptno);
	public List<Dept> deptsWithMax();
}
