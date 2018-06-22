package com.neuedu.pro3.control;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.neuedu.pro3.bean.User;
import com.neuedu.pro3.service.UserService;

@Controller
public class AjaxHandler {
	
	@Autowired
	UserService userService;
	
	//ResponseBody ���ǽ����ص�����ת����json��ʽ
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
	
//	@RequestMapping(value="/test/uploadAjax", headers=("content-type=multipart/*"), method=RequestMethod.POST)
	@RequestMapping(value="/test/uploadAjax")
	@ResponseBody
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
		return "{\"result\":true}";
	}
}
