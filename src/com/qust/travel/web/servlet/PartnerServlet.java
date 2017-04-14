package com.qust.travel.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.commons.CommonUtils;
import cn.itcast.servlet.BaseServlet;

import com.qust.travel.domain.Partner;
import com.qust.travel.domain.User;
import com.qust.travel.service.PartnerService;

public class PartnerServlet extends BaseServlet {
	private PartnerService partnerService = new PartnerService();
	/*
	 * 编辑
	 */
	public String edit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Partner partner = CommonUtils.toBean(request.getParameterMap(), Partner.class);
		System.out.println("partner:"+partner);
		/*
		 * 把第一张图片保存到封面simage属性中
		 */
		partner.setIntroduce(request.getParameter("content"));
		System.out.println("partner:"+partner);
		String content=partner.getIntroduce();
		int startIndex=content.indexOf("<img");
		if(startIndex<=0) {//如果没有封面图片，回到添加界面，提示至少有一张图片
			request.setAttribute("partner", partner);
			return "f:/jsps/partner/desc.jsp";
		}
		content=content.substring(startIndex, content.length()-1);//缩小范围
		//startIndex=content.indexOf("src=\"");//找到图片路径的开头
		//content=content.substring(startIndex);//继续缩小范围		
		startIndex=content.indexOf("travel/");
		startIndex=startIndex+7;//只保存到WebRoot后面的路径
		int endIndex=content.indexOf("_src");//找到图片路径的末尾(这是因为ueditor自动生成的图片里面，每个src的后面都会再跟着一个_src。如果是查找"的话经常会出错)
		content=content.substring(startIndex, endIndex-2);
		
		/*
		 * 设置partner的封面图片simage属性
		 */
		partner.setSimage(content);
		System.out.println("partner:"+partner);
		partnerService.edit(partner);
		
		return findAll(request,response);
	}
	/*
	 * 加载单个
	 */
	public String load(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int fpaid = Integer.parseInt(request.getParameter("fpaid"));
		Partner partner = partnerService.load(fpaid);
		request.setAttribute("partner", partner);
		return "f:/jsps/partner/desc.jsp";
	}
	/*
	 * 根据用户id查询驴友招募信息，返回一个list
	 */
	public String findByUserid(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = (User) request.getSession().getAttribute("session_user");
		List<Partner> partnerList = partnerService.findByUserid(user.getUserid());
		request.setAttribute("partnerList", partnerList);
		return "f:/jsps/partner/user_list.jsp";
	}
	/*
	 * 查找所有同行驴友的招募信息
	 */
	public String findAll(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Partner> partnerList = partnerService.findAll();
		request.setAttribute("partnerList", partnerList);
		return "f:/jsps/partner/list.jsp";
	}
	/*
	 * 添加同行驴友的招募信息
	 */
	public String add(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = (User) request.getSession().getAttribute("session_user");
		Partner partner = CommonUtils.toBean(request.getParameterMap(), Partner.class);
		partner.setUser(user);//设置它的user对象
		partner.setIntroduce(request.getParameter("content"));
		/*
		 * 把第一张图片保存到封面simage属性中
		 */
		String content=partner.getIntroduce();
		int startIndex=content.indexOf("<img");
		if(startIndex<=0) {//如果没有封面图片，回到添加界面，提示至少有一张图片
			request.setAttribute("partner", partner);
			return "f:/jsps/partner/add.jsp";
		}
		content=content.substring(startIndex, content.length()-1);//缩小范围
		//startIndex=content.indexOf("src=\"");//找到图片路径的开头
		//content=content.substring(startIndex);//继续缩小范围		
		startIndex=content.indexOf("travel/");
		startIndex=startIndex+7;//只保存到WebRoot后面的路径
		int endIndex=content.indexOf("_src");//找到图片路径的末尾(这是因为ueditor自动生成的图片里面，每个src的后面都会再跟着一个_src。如果是查找"的话经常会出错)
		content=content.substring(startIndex, endIndex-2);
		
		/*
		 * 设置partner的封面图片simage属性
		 */
		partner.setSimage(content);
		
		partnerService.add(partner);
		return findAll(request,response);
	}

}
