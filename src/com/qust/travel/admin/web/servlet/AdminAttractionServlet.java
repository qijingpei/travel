package com.qust.travel.admin.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

import com.qust.travel.domain.Attraction;
import com.qust.travel.domain.City;
import com.qust.travel.service.AttractionService;

public class AdminAttractionServlet extends BaseServlet {
	private AttractionService attractionService=new AttractionService();
	
	public String addPre(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		return "f:/adminjsps/attraction/add.jsp";
	}
	/*
	 * 查询所有景点
	 */
	public String all(HttpServletRequest request,HttpServletResponse response)throws
	ServletException,IOException{
		request.setAttribute("attractionList", attractionService.all());
		return "f:/adminjsps/attraction/list.jsp";
	}
	
	/*
	 * 查询某个城市下的所有景点
	 */
	
	public String findAll(HttpServletRequest request,HttpServletResponse response)throws
	ServletException,IOException{
		String cityid=request.getParameter("cityid");
		request.setAttribute("AttractionList", attractionService.findByCityid(cityid));
		return "f:/adminjsps/attraction/list.jsp";
	}
	/*
	 * 删除景点
	 */
	public String delete(HttpServletRequest request,HttpServletResponse response)throws
	ServletException,IOException{
		String attid=request.getParameter("attid");
		attractionService.delete(attid);
		return all(request,response);
		
	}
	/*
	 * 修改景点
	 */
	public String edit(HttpServletRequest request,HttpServletResponse response)throws
	ServletException,IOException{
		Attraction attraction=CommonUtils.toBean(request.getParameterMap(), Attraction.class);
		City city=CommonUtils.toBean(request.getParameterMap(), City.class);
		attraction.setCcity(city);
		attractionService.edit(attraction);
		return all(request,response);		
	}
	

	
	public String load(HttpServletRequest request,HttpServletResponse response)throws
	ServletException,IOException{
		/*
		 * 1.获取参数bid，通过bid调用service方法得到Book对象
		 * 2.保存book到request域中，转发到？
		 */
		
		request.setAttribute("attraction", attractionService.load(request.getParameter("attid")));
		return "f:/adminjsps/attraction/desc.jsp";//页面跳转
	}
    
}
