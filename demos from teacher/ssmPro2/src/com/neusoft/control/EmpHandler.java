package com.neusoft.control;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.po.Emp;
import com.neusoft.service.DeptService;
import com.neusoft.service.EmpService;
import com.neusoft.vo.EmpDeptVO;

@Controller
public class EmpHandler {
	@Autowired
	private EmpService empService;
	
	@RequestMapping(value="/test/EmpHandler_findAll.action")
	public String findAll(HttpServletRequest request){
		System.out.println("....EmpHandler....findAll()......");
		List<Emp> list=empService.findAll();
		request.setAttribute("list", list);
		return "forward:/main.jsp";
	}
	@RequestMapping(value="/test/EmpHandler_findAll2.action")
	public String findAll2(HttpServletRequest request){
		System.out.println("....EmpHandler....findAll2()......");
		List<EmpDeptVO> list=empService.findEmpDeptAll();
		request.setAttribute("list", list);
		return "forward:/main2.jsp";
	}
	@RequestMapping(value="/test/EmpHandler_findAll3.action")
	public String findAll3(HttpServletRequest request){
		System.out.println("....EmpHandler....findAll3()......");
		List<Emp> list=empService.findEmpDeptAll2();
		request.setAttribute("list", list);
		return "forward:/main3.jsp";
	}
	
	@RequestMapping(value="/test/EmpHandler_findBetween.action")
	public String findBetween(HttpServletRequest request) {
		System.out.println("....EmpHandler....findBetween()......");
		List<Emp> betweenEmps = empService.findBetween();
		request.setAttribute("betweenEmps", betweenEmps);
		return "forward:/findBetween.jsp";
	}
	
	@RequestMapping(value="/test/EmpHandler_maxEmpsOfDept.action")
	public String maxEmpsOfDept(int deptno, HttpServletRequest request) {
		System.out.println("....EmpHandler....maxEmpsOfDept()......");
		List<Emp> maxEmpsOfDept = empService.maxEmpsOfDept(deptno);
		request.setAttribute("maxEmpsOfDept", maxEmpsOfDept);
		return "forward:/maxEmpsOfDept.jsp";
	}
}
