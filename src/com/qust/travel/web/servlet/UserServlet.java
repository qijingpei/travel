package com.qust.travel.web.servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

import com.qust.travel.domain.User;
import com.qust.travel.exception.UserException;
import com.qust.travel.service.UserService;
/*
 * 用户模块
 */
public class UserServlet extends BaseServlet {
	private UserService userService=new UserService();
	public String regist(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		
		//封装表单数据
		 User form=CommonUtils.toBean(request.getParameterMap(), User.class);
		 //补全
		 form.setUserid(CommonUtils.uuid());

	
		 /*
		  * 输入校验
		  * 1.创建一个Map,用来封装错误信息，key为表单字段名称，值为错误信息
		  */
		 Map<String,String> errors=new HashMap<String,String>();
		 /*
		  * 2.获取form中的password,email,nickname进行校验
		  */
		
		 
		 String password=form.getPassword();
		 if(password==null||password.trim().isEmpty()){
			 errors.put("password", "密码不能为空");
		 }else if(password.length()<3||password.length()>10){
			 errors.put("password", "密码长度必须在3-10");
		 }
		 
		 String certainpassword=form.getCertainpassword();
		  if(!certainpassword.equals(password)){
			 errors.put("certainpassword", "两次密码输入不一致");
		 }
		 
		 
		 String username=form.getUsername();
		 if(username==null||username.trim().isEmpty()){
			 errors.put("username", "邮箱不能为空");
		 }else if(!username.matches("\\w+@\\w+\\.\\w+")){
			 errors.put("username", "Email格式错误");
		 }
		 
		 /*
		  * 3.判断是否存在错误信息
		  */
		 if(errors.size()>0){
			 //保存错误信息
			 //保存表单信息
			 //转发错误信息到regist.jsp
			 request.setAttribute("errors", errors);
			 request.setAttribute("form", form);
			 return "f:/jsps/user/regist.jsp";
		 }
		 /*
		  * 4.调用service的regist方法
		  */
		 
		 try {
			userService.regist(form);
			User user=userService.findByUserid(form.getUserid());
			System.out.println(user);
			request.getSession().setAttribute("session_user",user );
			
		} catch (UserException e) {
			//保存异常信息
			//保存form
			//转发到regist.jsp
			request.setAttribute("msg", e.getMessage());
			request.setAttribute("form", form);
			return "f:/jsps/user/regist.jsp";
		}				 
		  /*
			 * 
			 * 1.重定向到msg.jsp
			 */
			
			return "r:/index.jsp";
		
	}
	/*
	 * 退出功能
	 */
	public String quit(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		
		 request.getSession().invalidate();
		 return "r:/index.jsp";
	}
	/*
	 * 登录功能
	 */
	public String login(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		/*
		 * 1.封装表单数据到form中
		 * 2.输入校验
		 * 3.调用service完成登录
		 *   >保存错误信息、form到request中，转发到login.jsp
		 * 4.保存用户信息到session中，然后重定向到index.jsp  
		 */
		User form=CommonUtils.toBean(request.getParameterMap(), User.class);//封装
		try {
			User user=userService.login(form);
			request.getSession().setAttribute("session_user", user);
			return "r:/index.jsp";
		} catch (UserException e) {
			request.setAttribute("msg", e.getMessage());
			request.setAttribute("form", form);
			return "f:/jsps/user/login.jsp";
		}
		
	}

	


}
