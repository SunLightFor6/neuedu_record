package com.neuedu.pro3.control;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neuedu.pro3.bean.User;
import com.neuedu.pro3.service.UserService;

@Controller
public class AjaxHandler {
	
	@Autowired
	UserService userService;
	
	//ResponseBody 就是将返回的数据转换成json格式
	@RequestMapping(value="test/ajax.action")
	@ResponseBody
	public List<User> getUsers(){
		try {
			return userService.listAll();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	@RequestMapping(value="test/addUser")
	@ResponseBody
	public String addUser(User user) {
		int c;
		try {
			c = userService.addUser(user);
		} catch (Exception e) {
			c = -1;
			e.printStackTrace();
		}
		if (c == 1) {
			return "{\"result\":true}";
		} else {
			return "{\"result\":false}";
		}
	}
	
	
}
