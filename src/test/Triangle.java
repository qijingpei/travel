package test;

import org.junit.Test;

//三角形类
//变量：3个变长
//方法：判断三角形的类型，有返回值，等边返回值为1，等腰为2，一般三角形为3
//除此之外，不能构成三角形返回为0，长度超出200返回10
public class Triangle {
	private double b1;//边长1
	private double b2;//边长2
	private double b3;//边长3
	public Triangle() {
		
	}
	public Triangle(double b1,double b2,double b3) {
		this.b1=b1;
		this.b2=b2;
		this.b3=b3;
	}
	public double getB1() {
		return b1;
	}
	public void setB1(double b1) {
		this.b1 = b1;
	}
	public double getB2() {
		return b2;
	}
	public void setB2(double b2) {
		this.b2 = b2;
	}
	public double getB3() {
		return b3;
	}
	public void setB3(double b3) {
		this.b3 = b3;
	}
	/*
	 * 判定三角形类型的函数
	 */
	public int getTriangleType() { 
		if(String.valueOf(b1).isEmpty() ||String.valueOf(b2).isEmpty() ||String.valueOf(b3).isEmpty()) {
			return 10;//如果有边为空，返回10
		}
		if( !(b1<=200 && b1>0 &&b2<=200 && b2>0 &&b3<=200 && b3>0)) {
			return 10;//边的长度不在0~200之间，返回10
		} else if (b1+b2<=b3 || b1+b3<=b2 ||b2+b3<=b1){
			return 0;//两边之和要大于第三边
		} else if(b1==b2 && b2==b3) {//等边三角形返回为1
			return 1;
		} else if(b1==b2 || b2==b3 || b1==b3) {//等腰返回2
			return 2;
		} else {
			return 3;//一般三角形返回3
		}
	}
	
	//一个小测试
	@Test
	public void Test(){
		Triangle t1=new Triangle();
		t1.setB1(1);
		t1.setB2(1);
		t1.setB3(1);
		if(t1.getTriangleType()==1) {
			System.out.println("这是一个等边三角形");
		} else {
			System.out.println(t1.getTriangleType());
		}
	}
	
	
}
