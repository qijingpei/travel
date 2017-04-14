package test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.itcast.servlet.BaseServlet;

public class UeditorTestServlet extends BaseServlet {

	public String test(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("here1");
		String content=request.getParameter("notice_content");
		request.setAttribute("content", content);
		System.out.println(content);
		return "f:/jsps/ueditortest.jsp";
	}

}
