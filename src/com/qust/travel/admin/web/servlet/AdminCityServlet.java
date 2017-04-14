package com.qust.travel.admin.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

import com.qust.travel.domain.City;
import com.qust.travel.domain.Strategy;
import com.qust.travel.service.CityService;
import com.qust.travel.service.StrategyService;
/*
 * 城市的管理员的web.servlet类
 */
public class AdminCityServlet extends BaseServlet {
	private CityService cityService=new CityService();
	private StrategyService strategyService=new StrategyService();
	/*
	 * 添加城市
	 */
	public String add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * 封装表单数据到City对象中
		 * 获取参数content的内容，截取出图片后赋值给City的image
		 */
		City city=CommonUtils.toBean(request.getParameterMap(), City.class);
		city.setCityid(CommonUtils.uuid());
		String content=request.getParameter("content");
		int startIndex=content.indexOf("<img");
		if(startIndex==0) {//如果不包含图片，保存错误信息，并回显
			request.setAttribute("city", city);
			request.setAttribute("msg", "城市图片不能为空");
			request.setAttribute("content", content);
			return "f:/adminjsps/city/add.jsp";
		}
		content=content.substring(startIndex, content.length()-1);//缩小范围
		//startIndex=content.indexOf("src=\"");//找到图片路径的开头
		//content=content.substring(startIndex);//继续缩小范围		
		startIndex=content.indexOf("travel/");
		startIndex=startIndex+7;//只保存到WebRoot后面的路径
		int endIndex=content.indexOf("_src");//找到图片路径的末尾(这是因为ueditor自动生成的图片里面，每个src的后面都会再跟着一个_src。如果是查找"的话经常会出错)
		content=content.substring(startIndex, endIndex-2);
		
		city.setImage(content);
		cityService.add(city);
		//System.out.println(city);
		return findAll(request, response);
	}
	/*
	 * 删除城市
	 */
	public String delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//通过strategyService的findBycityid()方法查看这个城市下还有没有攻略
		//	>如果城市下面还有景点、攻略的话，则不允许删除，并提示错误原因
		String cityid=request.getParameter("cityid");
		List<Strategy> strategyList=strategyService.findByCityid(cityid);
		if(strategyList.size()!=0) {
			request.setAttribute("msg", "删除失败，原因：这个城市下还有攻略");
			request.setAttribute("cityList", cityService.findAll());
			return "f:/adminjsps/city/list.jsp";
		}
		//进行删除
		cityService.delete(request.getParameter("cityid"));
		request.setAttribute("cityList", cityService.findAll());
		return "f:/adminjsps/city/list.jsp";
	}
	/*
	 * 查询所有城市
	 */
	public String findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("cityList", cityService.findAll());
		return "f:/adminjsps/city/list.jsp";
	}
	
	/*
	 * 加载单个城市
	 */
	public String findByCityid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cityid=request.getParameter("cityid");
		request.setAttribute("city", cityService.findByCityid(cityid));
		return "f:/adminjsps/city/desc.jsp";
	}
}
