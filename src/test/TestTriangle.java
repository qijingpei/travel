package test;
//三角形判断程序的测试类
//连接数据库，从数据库每条记录中读取边长，调用Triangle类的getTriangleType方法，得到它的三角形类型
import java.sql.ResultSet;
import java.sql.SQLException;

import org.junit.Test;

public class TestTriangle{
	static String sql=null;
	//两条sql语句
	static DBHelper db1=null;
	static DBHelper db2=null;
	static ResultSet ret=null;
	//新建一个Triangle类对象
		
	/*
	 * 主函数，连接数据库，从数据库每条记录中读取边长，
	 * 然后调用Triangle类的getTriangleType方法，得到它的三角形类型
	 */
    @Test
	public void connectionmysql() {
		sql="select * from bianchang";
		db1=new DBHelper(sql);
		db2=new DBHelper(sql);
		
		//下面开始
		try {
			//执行查询，获得结果
			ret=db1.pst.executeQuery(sql);
			while(ret.next()) {
				String id=ret.getString(1);
				String caseType=ret.getString(2);

				if(ret.getString(3)==null ||ret.getString(4)==null ||ret.getString(5)==null) {//如果有值为空
					System.out.println("编号："+id+"测试类型："+caseType+",边长中至少有一个是null空值,程序判断类型是：10");
					String updateSql="update bianchang set checked=1 where id="+id;
					/*
					 * 要使用第二个连接来执行update操作，如果仍然使用db1会把第一个连接关闭掉！！
					 */
					int m=db2.pst.executeUpdate(updateSql);
					continue;
				}
				double b1=Double.parseDouble(ret.getString(3));				
				double b2=Double.parseDouble(ret.getString(4));
				double b3=Double.parseDouble(ret.getString(5));
				String expected=ret.getString(6);
				String checked=ret.getString(7);
				
				//初始化一个三角形对象
				Triangle t1=new Triangle(b1, b2, b3);
				int testType=t1.getTriangleType();
				boolean check=false;
				if (String.valueOf(testType).equals(expected)) {
					check=true;//预期结果和机器预算结果相同
				} else {
					check=false;
				}
				String updateSql="update bianchang set checked="+String.valueOf(check)+" where id="+id;
				/*
				 * 要使用第二个连接来执行update操作，如果仍然使用db1会把第一个连接关闭掉！！
				 */
				int m=db2.pst.executeUpdate(updateSql);
				System.out.println("编号："+id+"测试类型："+caseType+",边长是:"+b1+","+b2+","+b3+",预期类型是："+expected+",程序判断类型是："+testType
						+"是否与预期结果相同："+check);
			}			
			ret.close();
      		db1.close();
      		db2.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace(); 			
		}  
	}

}
