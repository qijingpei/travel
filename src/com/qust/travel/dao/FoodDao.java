package com.qust.travel.dao;

import java.sql.SQLException;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import cn.itcast.jdbc.TxQueryRunner;

import com.qust.travel.domain.User;

//User的数据链路层
public class FoodDao {
	private QueryRunner qr=new TxQueryRunner();
	/*
	 * 1.按用户名查询
	 */
	public User findByUsername(String username) {
		String sql="select * from user where username=?";
		try {
			return qr.query(sql, new BeanHandler<User>(User.class),username);
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}


	/*
	 * 按照id查询用户
	 */
	public User findByUserid(String userid) {
		try {
			String sql = "select * from user where userid=?";
			return qr.query(sql, new BeanHandler<User>(User.class), userid);
		} catch(SQLException e) {
			throw new RuntimeException("按照id查询用户出错啦"+e);
		}
	}
	
	/*
	 * 增加信息
	 */	
	public void add(User user){
    	String sql="insert into user values(?,?,?,?,?)";
    	Object [] Params={user.getUserid(),user.getUsername(),
    			user.getPassword(),user.getNickname(),user.getImage()};
    	try {
			qr.update(sql,Params);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
    }

	

}
