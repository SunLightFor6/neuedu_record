package com.neuedu.pro3.control;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
		boolean isLogin;
		try {
			isLogin = Boolean.parseBoolean(userService.login(user) + "");
		} catch (Exception e) {
			isLogin = false;
			e.printStackTrace();
		}
		if (isLogin) {
			session.setAttribute("note", "登录成功");
			session.setAttribute("isLogin", true);
			session.setAttribute("username", user.getName());
		} else {
			session.setAttribute("note", "登录失败");
			session.setAttribute("isLogin", false);
		}
		return "forward:/index.jsp";
	}
	
	@RequestMapping(value="/test/upload")
	public String upload(@RequestParam MultipartFile[] upload_file, HttpServletRequest req) {
		//file就是服务器已经得到的临时文件
					//..可以上传多个文件 传入数组即可
		//文件上传
			//  确定文件传到哪里去 文件必须在tomcat底下，不然就是访问不到的
				//			..webcontent/upload传到工程下
				//			..与项目平级的目录下  （空启tomcat 修改tomcat目录下部署 更改文件夹名）
				//					C:\...\apache-tomcat-7.0.75\webapps\ upload
		String path = req.getServletContext().getRealPath("/");//得到当前工程根路径
		
//		String ppath = new File(path).getParent();		 //OK
//		String ppath = path + "../";					//OK
//		String ppath = path + "..\\";					//OK
		String ppath = path + "..";						//OK
//				System.out.println(ppath + "\\upload");
		for(MultipartFile file : upload_file) {
			
			//  确定文件名  时间戳
			String filename = System.currentTimeMillis() + file.getOriginalFilename();
			
			//  拷贝文件  拷贝到目标地址
			File dest = new File(ppath + "\\upload", filename);
			try {
				file.transferTo(dest);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return "/main.jsp";//默认forward
	}
	
}
