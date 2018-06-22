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
	
//	@RequestMapping(value="/test/uploadAjax", headers=("content-type=multipart/*"), method=RequestMethod.POST)
	@RequestMapping(value="/test/uploadAjax")
	@ResponseBody
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
		return "{\"result\":true}";
	}
}
