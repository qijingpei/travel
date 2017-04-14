package com.qust.travel.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.servlet.BaseServlet;

import com.qust.travel.domain.TravelItem;
import com.qust.travel.service.TravelItemService;

public class TravelItemServlet extends BaseServlet {
	private TravelItemService travelItemService = new TravelItemService();
	
	/*
	 * 加载单个旅游项目
	 */
	public String load(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int titid = Integer.parseInt(request.getParameter("titid"));
		request.setAttribute("travelItem", travelItemService.load(titid));
		return "f:/jsps/travelItem/desc.jsp";
		
	}
	/*
	 * 查询全部
	 */
	public String findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<TravelItem> travelItemList = travelItemService.findAll();
		request.setAttribute("travelItemList", travelItemList);
		return "f:/jsps/travelItem/list.jsp";
	}
	

}
