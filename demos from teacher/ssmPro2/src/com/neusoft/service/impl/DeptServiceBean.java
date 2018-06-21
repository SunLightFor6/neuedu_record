package com.neusoft.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.neusoft.mapper.DeptMapper;
import com.neusoft.mybatis.SqlSessionUtil;
import com.neusoft.po.Dept;
import com.neusoft.service.DeptService;

@Service
public class DeptServiceBean implements DeptService {

	@Override
	public Dept findDeptEmps(int deptno) {
		System.out.println("...DeptServiceBean...findDeptEmps().....");
		SqlSession session = SqlSessionUtil.getSession();
		DeptMapper mapper = session.getMapper(DeptMapper.class);
		Dept dept;
		try {
			dept = mapper.findDeptEmps(deptno);
		} catch (Exception e) {
			dept = null;
			e.printStackTrace();
		} finally {
			session.close();
		}
		return dept;
	}

	@Override
	public List<Dept> deptsWithMax() {
		// TODO Auto-generated method stub
		return null;
	}
}
