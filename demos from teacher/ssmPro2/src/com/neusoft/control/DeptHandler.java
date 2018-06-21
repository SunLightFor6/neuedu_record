package com.neusoft.control;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.po.Dept;
import com.neusoft.service.DeptService;

@Controller
public class DeptHandler {

	@Autowired
	private DeptService deptService;
	
	@RequestMapping(value="/test/DeptHandler_findDeptEmps.action")
	public String findDeptEmps(int deptno, HttpServletRequest req) {
		System.out.println("....EmpHandler....findDeptEmps()......");
		Dept dept = deptService.findDeptEmps(deptno);
		req.setAttribute("deptemps", dept);
		return "forward:/findDeptEmps.jsp";
	}
}
