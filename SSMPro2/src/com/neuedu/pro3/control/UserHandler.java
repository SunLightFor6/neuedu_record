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
			session.setAttribute("note", "��¼�ɹ�");
			session.setAttribute("isLogin", true);
			session.setAttribute("username", user.getName());
		} else {
			session.setAttribute("note", "��¼ʧ��");
			session.setAttribute("isLogin", false);
		}
		return "forward:/index.jsp";
	}
	
	@RequestMapping(value="/test/upload")
	public String upload(@RequestParam MultipartFile[] upload_file, HttpServletRequest req) {
		//file���Ƿ������Ѿ��õ�����ʱ�ļ�
					//..�����ϴ�����ļ� �������鼴��
		//�ļ��ϴ�
			//  ȷ���ļ���������ȥ �ļ�������tomcat���£���Ȼ���Ƿ��ʲ�����
				//			..webcontent/upload����������
				//			..����Ŀƽ����Ŀ¼��  ������tomcat �޸�tomcatĿ¼�²��� �����ļ�������
				//					C:\...\apache-tomcat-7.0.75\webapps\ upload
		String path = req.getServletContext().getRealPath("/");//�õ���ǰ���̸�·��
		
//		String ppath = new File(path).getParent();		 //OK
//		String ppath = path + "../";					//OK
//		String ppath = path + "..\\";					//OK
		String ppath = path + "..";						//OK
//				System.out.println(ppath + "\\upload");
		for(MultipartFile file : upload_file) {
			
			//  ȷ���ļ���  ʱ���
			String filename = System.currentTimeMillis() + file.getOriginalFilename();
			
			//  �����ļ�  ������Ŀ���ַ
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
		
		return "/main.jsp";//Ĭ��forward
	}
	
}
