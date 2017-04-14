package test;

import java.io.IOException;
import java.net.MalformedURLException;

import org.junit.Test;
import org.xml.sax.SAXException;

import com.meterware.httpunit.HttpUnitOptions;
import com.meterware.httpunit.WebConversation;
import com.meterware.httpunit.WebForm;
import com.meterware.httpunit.WebLink;
import com.meterware.httpunit.WebResponse;

public class LinkTest {
	/** 
     * 获取页面的表单控件内容 
     * @throws MalformedURLException 
     * @throws IOException 
     * @throws SAXException 
     */  
	@Test
    public  void testHtmlContentForm() throws MalformedURLException,  
            IOException, SAXException {  
        System.out.println("获取页面中表单的内容：");  
        // 建立一个WebConversation实例  
        //关闭javaScript
      	HttpUnitOptions.setScriptingEnabled(false);
        WebConversation wc = new WebConversation(); 
        
        // 获取响应对象  
        WebResponse resp = wc.getResponse("http://localhost:8080/travel/index.jsp");  
        
        System.out.println(resp.getText());  
        // 获得对应的表单对象  
        WebForm webForm = resp.getForms()[0];  
        // 获得表单中所有控件的名字  
        String[] pNames = webForm.getParameterNames();  
        int i = 0;  
        int m = pNames.length;  
        // 循环显示表单中所有控件的内容  
        while (i < m) {  
            System.out.println("第" + (i + 1) + "个控件的名字是" + pNames[i] + "，里面的内容是"  
                    + (webForm.getParameterValues(pNames[i])));  
            ++i;  
        }  
    }
	
	/** 
     * 获取页面链接并模拟点击 
     * @throws MalformedURLException 
     * @throws IOException 
     * @throws SAXException 
     */ 
	@Test
    public void testClickLink() throws MalformedURLException,  
            IOException, SAXException {  
        System.out.println("获取页面中链接指向页面的链接：");        
        //关闭javaScript
      	HttpUnitOptions.setScriptingEnabled(false);
      	// 建立一个WebConversation实例  
        WebConversation wc = new WebConversation();  
        // 获取响应对象  
        WebResponse resp = wc.getResponse("http://localhost:8080/travel/index.jsp"); 
        //WebResponse resp = wc.getResponse("http://localhost:8080/travel/CityServlet?method=findAll"); 
       // WebResponse resp = wc.getResponse("http://localhost:8080/travel/AdminAttractionServlet?method=all"); 
        // 获得页面链接对象  
        WebLink link = resp.getLinkWith("发攻略");  
        // 模拟用户单击事件  
        link.click();  
        // 获得当前的响应对象  
        WebResponse nextLink = wc.getCurrentPage();   
        // 用getUrl方法获取当前页的网址并输出
        System.out.println(nextLink.getURL());    
    }  
}
