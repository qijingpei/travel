package com.qust.travel.web.servlet;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.junit.Test;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

import com.qust.travel.domain.City;
import com.qust.travel.domain.Strategy;
import com.qust.travel.domain.User;
import com.qust.travel.service.CityService;
import com.qust.travel.service.StrategyService;
import com.qust.travel.service.UserService;
/*
 * 攻略的servlet层
 */
public class StrategyServlet extends BaseServlet {
	private StrategyService strategyService=new StrategyService();
	private CityService cityService=new CityService();

	
	/*
	 * 按用户id查询攻略
	 */
	public String findByUserid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user=(User) request.getSession().getAttribute("session_user");
		List<Strategy> strategyList=strategyService.findByUserid(user.getUserid());
		request.setAttribute("strategyList", strategyList);
		return "/jsps/user/person.jsp";
		
	}
	
	/*
	 * 加载单个攻略
	 */
	public String load(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * 1. 获取cstid
		 * 2. 调用service、dao#load()获取strategy对象，并给它的city、user属性赋值
		 * 3. 转发到desc.jsp显示
		 */
		String cstid=request.getParameter("cstid");
		String cityid=request.getParameter("cityid");
		
		Strategy strategy=strategyService.load(cstid);
		
		//并给它的city、user属性赋值
		User user=(User) request.getSession().getAttribute("session_user");
		City city=cityService.findByCityid(cityid);
		strategy.setCity(city);
		strategy.setUser(user);
		
		request.setAttribute("strategy", strategy);
		return "f:/jsps/strategy/desc.jsp";		
	}
	/*
	 * 删除单个攻略
	 */
	public String delete(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String cstid = request.getParameter("cstid");
		strategyService.delete(cstid);
		return findAll(request, response);
	}
	/*
	 * 修改前的准备：加载单个攻略到ueditor可编辑界面
	 */
	public String editPre(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * 1. 获取cstid
		 * 2. 调用service、dao#load()获取strategy对象，并给它的city、user属性赋值
		 * 3. 转发到desc.jsp显示
		 */
		String cstid=request.getParameter("cstid");
		String cityid=request.getParameter("cityid");
		User user=(User) request.getSession().getAttribute("session_user");
		Strategy strategy=strategyService.load(cstid);
		
		//并给它的city、user属性赋值
		City city=cityService.findByCityid(cityid);
		strategy.setCity(city);
		strategy.setUser(user);
		
		request.setAttribute("strategy", strategy);
		return "f:/jsps/strategy/edit.jsp";		
	}
	/*
	 * edit编辑方法进行内容的更新
	 * 		>只更新它的title和content、simage
	 */
	public String edit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Strategy strategy=CommonUtils.toBean(request.getParameterMap(), Strategy.class);
		City city=CommonUtils.toBean(request.getParameterMap(), City.class);
		strategy.setCity(city);
		
		
		/*
		 * 把第一张图片保存到封面simage属性中
		 */
		String content=strategy.getContent();
		int startIndex=content.indexOf("<img");
		content=content.substring(startIndex, content.length()-1);//缩小范围
		//startIndex=content.indexOf("src=\"");//找到图片路径的开头
		//content=content.substring(startIndex);//继续缩小范围		
		startIndex=content.indexOf("travel/");
		startIndex=startIndex+7;//只保存到WebRoot后面的路径
		int endIndex=content.indexOf("_src");//找到图片路径的末尾(这是因为ueditor自动生成的图片里面，每个src的后面都会再跟着一个_src。如果是查找"的话经常会出错)
		content=content.substring(startIndex, endIndex-2);
		
		/*
		 * 设置strategy的封面图片simage属性
		 */
		strategy.setSimage(content);
		
		strategyService.edit(strategy);
		return findAll(request, response);
	}
	
	/*
	 * 查询所有攻略 
	 * 	>遍历每一个攻略，给它设置上它的city和user
	 */
	public String findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Strategy> strategyList=strategyService.findAll();
		UserService userService=new UserService();
		for(Strategy strategy:strategyList) {
			City city=cityService.findByCityid(strategy.getCityid());
			User user=userService.findByUserid(strategy.getUserid());
			strategy.setCity(city);
			strategy.setUser(user);
		}
		//System.out.println(strategyList);
		request.setAttribute("strategyList",strategyList);
		return "/jsps/strategy/list.jsp";
	}
	
	/*
	 * 添加攻略
	 */
	public String add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		/*
		 * 1.获取表单数据
		 * 2.封装到Strategy对象中
		 * 		>把第一张图片保存到封面simage属性中
		 * 3.调用service、dao完成保存
		 * 4.把Strategy保存到request域，转发到desc.jsp显示
		 */
		
		Strategy strategy=CommonUtils.toBean(request.getParameterMap(), Strategy.class);
		//把Map中的userid、cityid保存下来
		User user=(User) request.getSession().getAttribute("session_user");
		City city=CommonUtils.toBean(request.getParameterMap(), City.class);
		
		strategy.setCstid(CommonUtils.uuid());//给攻略加上十六位进制的16个符号作id
		strategy.setCity(city);
		strategy.setUser(user);
		strategy.setTime(new Date());
		
		/*
		 * 把第一张图片保存到封面simage属性中
		 */
		String content=strategy.getContent();
		int startIndex=content.indexOf("<img");
		content=content.substring(startIndex, content.length()-1);//缩小范围
		//startIndex=content.indexOf("src=\"");//找到图片路径的开头
		//content=content.substring(startIndex);//继续缩小范围		
		startIndex=content.indexOf("travel/");
		startIndex=startIndex+7;//只保存到WebRoot后面的路径
		int endIndex=content.indexOf("_src");//找到图片路径的末尾(这是因为ueditor自动生成的图片里面，每个src的后面都会再跟着一个_src。如果是查找"的话经常会出错)
		content=content.substring(startIndex, endIndex-2);
		
		/*
		 * 设置strategy的封面图片simage属性
		 */
		strategy.setSimage(content);
		
		
		
		
		/*
		 * 调用service的方法完成添加
		 */
		strategyService.add(strategy);
		request.setAttribute("strategy",strategy);
		//System.out.println(strategy);
		return "f:/jsps/strategy/desc.jsp";
	}
	/*
	 * 添加攻略之前的准备
	 * 加载所有的城市
	 */
	public String addPre(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("cityList", cityService.findAll());
		return "f:/jsps/strategy/add.jsp";
	}
	
	/*
	 * 截取出图片
	 */
	@Test
	public void fun1() {
		Strategy strategy=new Strategy();
		strategy.setContent("<img src=\"http://localhost:8080/travel/ueditor/jsp/upload/20160109/77461452305337963.jpeg\" _src=\"http://dbjkassssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
		String content=strategy.getContent();
		//System.out.println(content);
		int startIndex=content.indexOf("<img");
		//System.out.println(startIndex);
		content=content.substring(startIndex, content.length()-1);//缩小范围
		//System.out.println(content);
		//startIndex=content.indexOf("src=\"");//找到图片路径的开头
		//content=content.substring(startIndex);//继续缩小范围
		startIndex=content.indexOf("travel/");//继续缩小范围
		//System.out.println(startIndex);
		startIndex=startIndex+7;//只保存到WebRoot后面的路径
		int endIndex=content.indexOf("_src");//找到图片路径的末尾
		//System.out.println(endIndex);
		content=content.substring(startIndex, endIndex-2);
		System.out.println(content);
	}

}








