package test;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.junit.Test;

import com.meterware.httpunit.HttpUnitOptions;
import com.meterware.httpunit.PostMethodWebRequest;
import com.meterware.httpunit.WebConversation;
import com.meterware.httpunit.WebRequest;
import com.meterware.httpunit.WebResponse;

//登录的测试类
public class LoginTest {
	/*
	 * 1. 连接数据库，读取数据，
	 * 2. 进行预期结果与测试结果的比较，输出测试结果和比较结果
	 */
	static String sql=null;
	//两条sql语句
	static DBHelper db1=null;
	static DBHelper db2=null;
	static ResultSet ret=null;

	@Test
	public void connectionmysql() {
		sql="select * from login";
		db1=new DBHelper(sql);
		db2=new DBHelper(sql);

		//下面开始
		try {
			//执行查询，获得结果
			ret=db1.pst.executeQuery(sql);
			while(ret.next()) {
				String id=ret.getString(1);
				String desc=ret.getString(2);//测试项和测试目标
				String username=ret.getString(3);
				String password=ret.getString(4);
				String expect=ret.getString(5);
				//调用getUrl(*,*)方法
				//传递username和password进行测试
				String result=getUrl(username, password);
				/*
				 * 判断预期结果与运行结果是否相同，相同的话置isSame属性为true，否则为false
				 */
				boolean isSame=false;
				if(result.equals(expect)) {
					isSame=true;
				}
				/*
				 * 把result、isSame写回到数据库中
				 */
				String updateSql="update login set result='"+result+"',isSame="+isSame+" where id="+id;
				/*
				 * 要使用第二个连接来执行update操作，如果仍然使用db1会把第一个连接关闭掉！！
				 */
				//System.out.println("result:"+result);
				//System.out.println("isSame:"+isSame);
				int m=db2.pst.executeUpdate(updateSql);
				System.out.println("编号："+id+"测试项和测试目标："+desc+",用户名:"+username+",密码："+password+",预期结果是："+expect);
				System.out.println(",程序输出结果是："+result+"是否与预期结果相同："+isSame);
				System.out.println("---------------------------------------");
			}			
			ret.close();
			db1.close();
			db2.close();


		} catch (SQLException e) {
			e.printStackTrace(); 			
		}
	}

	/*
	 * 返回登录后的页面的url网址
	 */
	public String getUrl(String username,String password){
		try {
			//要测试的网址
			String url="http://localhost:8080/travel/UserServlet?method=login";
			//String url="http://localhost:8080/travel/jsps/user/login.jsp";
			WebRequest requset= new PostMethodWebRequest(url);
			requset.setParameter("username", username);
			requset.setParameter("password", password);
			//关闭javaScript
			HttpUnitOptions.setScriptingEnabled(false);
			//获得一次会话对象
			WebConversation wc = new WebConversation();
			//获得服务端返回的response对象
			WebResponse response=wc.getResponse(requset);   
			System.out.println(response.getURL().toString());
			return response.getURL().toString();

		} catch (Exception e) {
			System.out.println( "Exception: 测试登录时出现了错误" + e );
		}
		return null;
	}
}
