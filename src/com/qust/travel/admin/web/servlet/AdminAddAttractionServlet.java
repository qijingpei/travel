package com.qust.travel.admin.web.servlet;

import java.awt.Image;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.ImageIcon;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import cn.itcast.commons.CommonUtils;

import com.qust.travel.domain.Attraction;
import com.qust.travel.service.AttractionService;

public class AdminAddAttractionServlet extends HttpServlet {
	private AttractionService attractionService=new AttractionService();

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("here1");
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		/*
		 * 1.把表单数据封装到attraction对象中
		 * 2.上传三步
		 */
		//创建工厂
		DiskFileItemFactory factory=new DiskFileItemFactory();
		//得到解析器
		ServletFileUpload sfu=new ServletFileUpload(factory);
	//	System.out.println("here1.0");
		//使用解析器得到request对象，得到List<FileItem>
		try {
			List<FileItem> fileItemList=sfu.parseRequest(request);
			/*
			 * 把List<FileItem>中的数据封装到attraction对象中
			 *  >把所有的普通表单字段数据先封装到Map中
			 *  >再把Map中的数据封装到attraction对象中
			 */
			//fileItemList.get(0).isFormField();若返回为true则是普通表单项，若返回为false则是文件表单项
			Map<String,String> map=new HashMap<String,String>();
			for(FileItem fileItem:fileItemList){
				if(fileItem.isFormField()){
				map.put(fileItem.getFieldName(), fileItem.getString("utf-8"));
				}
			}
			Attraction attraction=CommonUtils.toBean(map, Attraction.class);
			
			/*
			 * 为attraction指明attid
			 */
			attraction.setAttid(CommonUtils.uuid());
		//	System.out.println("here1.1");
			//System.out.println(attraction);//修改
			/*
			 * 2.保存上传的文件
			 *  *保存的目录
			 *  *保存的文件名称
			 */
		//	System.out.println("here1.2");
			//得到保存的目录
			String savepath=this.getServletContext().getRealPath("/images/attraction");//目录名未知
			//处理有些浏览器上传的是绝对路径的问题
			String filename=fileItemList.get(1).getName();
			int index=filename.lastIndexOf("\\");
			if (index!=-1) {
				filename=filename.substring(index+1);
			}
			filename = CommonUtils.uuid() + "_" + filename;
			/*
			 * 校验文件的扩展名
			 */
			if(!filename.toLowerCase().endsWith("jpg")){
				request.setAttribute("msg", "您上传的图片格式不是JPG格式");
				request.getRequestDispatcher("/adminjsps/attraction/add.jsp").forward(request, response);//路径未知
				return;
			}

			
			
			//使用目录和名称创建目标文件
			File destFile=new  File(savepath,filename);
			//保存上传文件到目标位置
			fileItemList.get(1).write(destFile);
			/*
			 * 3.设置Attraction对象的image，即把图片的路径设置给Attraction的image
			 */
			attraction.setImage("images/attraction/"+filename);//未知
		
			/*
			 * 使用AttractionService保存
			 */
			attractionService.add(attraction);
//			/*
//			 * 校验图片的尺寸
//			 */
//			Image image=new ImageIcon(destFile.getAbsolutePath()).getImage();
//			if(image.getWidth(null)>200||image.getHeight(null)>200){
//				destFile.delete();//删除这个文件
//				request.setAttribute("msg", "您上传的文件尺寸超过了200*200");
//				request.getRequestDispatcher("").forward(request, response);//路径未知
//				return;
//			}
			
			/*
			 * 5.返回景点列表
			 */
			System.out.println(attraction);
			request.getRequestDispatcher("/AdminAttractionServlet?method=all").forward(request, response);
		} catch (Exception e) {
			if(e instanceof FileUploadBase.FileSizeLimitExceededException){
				request.setAttribute("msg", "上传失败！");
				request.getRequestDispatcher("/adminjsps/attraction/add.jsp").forward(request, response);//路径未知
				
			}
			
		}
	}

}
