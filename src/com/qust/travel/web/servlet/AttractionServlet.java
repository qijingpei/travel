package com.qust.travel.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.servlet.BaseServlet;

import com.qust.travel.service.AttractionService;

public class AttractionServlet extends BaseServlet {
	private AttractionService attractionService=new AttractionService();
	/*
	 * 根据城市id查询景点
	 */
	public String findByCityid(HttpServletRequest request,HttpServletResponse response)throws
	ServletException,IOException{
		String cityid=request.getParameter("cityid");
		request.setAttribute("attractionList", attractionService.findByCityid(cityid));
		//System.out.println(attractionService.findByCityid(cityid));
		return "f:/jsps/city/desc.jsp";//页面跳转到desc.jsp
	}
	/*
	 * 加载
	 */
	public String load(HttpServletRequest request,HttpServletResponse response)throws
	ServletException,IOException{

		request.setAttribute("attraction", attractionService.load(request.getParameter("attid")));
		//System.out.println(attractionService.load(request.getParameter("attid")));
		return "f:/jsps/attraction/desc.jsp";//转发
	}
  
}
