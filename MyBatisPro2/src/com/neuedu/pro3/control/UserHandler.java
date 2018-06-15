package com.neuedu.pro3.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.pro3.bean.User;
import com.neuedu.pro3.service.UserService;

@Controller
public class UserHandler {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/UserHandler/login")
	public String login(User user, HttpSession session, HttpServletRequest req, HttpServletResponse resp){
		System.out.println("--- UserHandler -- login() ---");
		session.setMaxInactiveInterval(3000);
		boolean isLogin = Boolean.parseBoolean(userService.login(user) + "");
		if (isLogin) {
			session.setAttribute("message", "µÇÂ¼³É¹¦");
			session.setAttribute("isLogin", true);
			session.setAttribute("username", user.getName());
		} else {
			session.setAttribute("message", "µÇÂ¼Ê§°Ü");
			session.setAttribute("isLogin", false);
		}
		return "forward:/index.jsp";
	}
	
}
