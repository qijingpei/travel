package com.qust.travel.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.servlet.BaseServlet;

import com.qust.travel.domain.Attraction;
import com.qust.travel.domain.City;
import com.qust.travel.service.AttractionService;
import com.qust.travel.service.CityService;
/*
 * 城市的servlet层
 */
public class CityServlet extends BaseServlet {
	private CityService cityService=new CityService();
	
	/*
	 * 加载单个城市
	 */
	public String load(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cityid=request.getParameter("cityid");
		request.setAttribute("city",cityService.load(cityid));
		
		//找到这个城市下的所有景点
		AttractionService attractionService=new AttractionService();
		List<Attraction> attractionList=attractionService.findByCityid(cityid);

		request.setAttribute("attractionList", attractionList);
		return "f:/jsps/city/desc.jsp";
	}
	/*
	 * 查询所有城市
	 */
	public String findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("cityList", cityService.findAll());
		return "f:/jsps/city/list.jsp";
	}
	/*
	 * 通过城市名查询城市
	 */
	public String findByCityname(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cityname=request.getParameter("cityname");
		City city=cityService.findByCityname(cityname);
		
		//找到这个城市下的所有景点
		AttractionService attractionService=new AttractionService();
		List<Attraction> attractionList=attractionService.findByCityid(city.getCityid());
		request.setAttribute("attractionList", attractionList);
		request.setAttribute("city", city);
		//System.out.println(city);
		return "f:/jsps/city/desc.jsp";
	}

}
