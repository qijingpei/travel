package com.qust.travel.admin.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

import com.qust.travel.domain.TravelItem;
import com.qust.travel.service.TravelItemService;

public class AdminTravelItemServlet extends BaseServlet {
	private TravelItemService travelItemService = new TravelItemService();
	/*
	 * 修改
	 */
	public String edit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		TravelItem travelItem = CommonUtils.toBean(request.getParameterMap(), TravelItem.class);
		/*
		 * 把第一张图片保存到封面simage属性中
		 */
		String content=travelItem.getContent();
		int startIndex=content.indexOf("<img");
		if(startIndex<=0) {//如果没有封面图片，回到添加界面，提示至少有一张图片
			request.setAttribute("travelItem", travelItem);
			return "f:/adminjsps/travelItem/edit.jsp";
		}
		content=content.substring(startIndex, content.length()-1);//缩小范围
		//startIndex=content.indexOf("src=\"");//找到图片路径的开头
		//content=content.substring(startIndex);//继续缩小范围		
		startIndex=content.indexOf("travel/");
		startIndex=startIndex+7;//只保存到WebRoot后面的路径
		int endIndex=content.indexOf("_src");//找到图片路径的末尾(这是因为ueditor自动生成的图片里面，每个src的后面都会再跟着一个_src。如果是查找"的话经常会出错)
		content=content.substring(startIndex, endIndex-2);
		
		/*
		 * 设置travelItem的封面图片simage属性
		 */
		travelItem.setSimage(content);
		
		travelItemService.edit(travelItem);
		return findAll(request, response);
	}
	/*
	 * 删除某个旅游项目
	 */
	public String delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int titid = Integer.parseInt(request.getParameter("titid"));
		travelItemService.delete(titid);
		return findAll(request,response);
		
	}
	/*
	 * 加载单个旅游项目
	 */
	public String load(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int titid = Integer.parseInt(request.getParameter("titid"));
		request.setAttribute("travelItem", travelItemService.load(titid));
		return "f:/adminjsps/travelItem/desc.jsp";
		
	}
	
	/*
	 * 查找全部
	 */
	public String findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<TravelItem> travelItemList = travelItemService.findAll();
		request.setAttribute("travelItemList", travelItemList);
		return "f:/adminjsps/travelItem/list.jsp";
	}
	
	/*
	 * 增加一个旅游项目
	 */
	public String add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 一键封装传过来的各种属性，生成TravelItem的对象
		TravelItem travelItem = CommonUtils.toBean(request.getParameterMap(), TravelItem.class);
			
		/*
		 * 把第一张图片保存到封面simage属性中
		 */
		String content=travelItem.getContent();
		int startIndex=content.indexOf("<img");
		if(startIndex<=0) {//如果没有封面图片，回到添加界面，提示至少有一张图片
			request.setAttribute("travelItem", travelItem);
			return "f:/adminjsps/travelItem/add.jsp";
		}
		content=content.substring(startIndex, content.length()-1);//缩小范围
		//startIndex=content.indexOf("src=\"");//找到图片路径的开头
		//content=content.substring(startIndex);//继续缩小范围		
		startIndex=content.indexOf("travel/");
		startIndex=startIndex+7;//只保存到WebRoot后面的路径
		int endIndex=content.indexOf("_src");//找到图片路径的末尾(这是因为ueditor自动生成的图片里面，每个src的后面都会再跟着一个_src。如果是查找"的话经常会出错)
		content=content.substring(startIndex, endIndex-2);
		
		/*
		 * 设置travelItem的封面图片simage属性
		 */
		travelItem.setSimage(content);
		
		/*
		 * 添加旅游项目
		 */
		travelItemService.add(travelItem);
		return findAll(request,response);
	}

}
