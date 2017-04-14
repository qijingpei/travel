package com.qust.travel.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.itcast.jdbc.TxQueryRunner;

import com.qust.travel.domain.City;

/*
 * 城市的Dao层
 */
public class CommentDao {
	private QueryRunner qr=new TxQueryRunner();
	
	/*
	 * 根据城市名查询城市
	 */
	public City findByCityname(String cityname) {
		try {
			String sql="select * from city where name=?";		
			return qr.query(sql, new BeanHandler<City>(City.class), cityname);
		} catch (SQLException e) {
			throw new RuntimeException("根据城市名查询城市时出错了！"+e);
		}
	}

	/*
	 * 查询所有城市
	 */
	public List<City> findAll() {
		try {
			String sql="select * from city";		
			return qr.query(sql, new BeanListHandler<City>(City.class));
		} catch (SQLException e) {
			throw new RuntimeException("查询所有城市时出错了！"+e);
		}
	}

	/*
	 * 按城市id查询城市
	 */
	public City findByCityid(String cityid) {
		try {
			String sql="select * from city where cityid=?";		
			return qr.query(sql, new BeanHandler<City>(City.class),cityid);
		} catch (SQLException e) {
			throw new RuntimeException("按城市id查询城市时出错了！"+e);
		}
	}

	/*
	 * 删除城市
	 */
	public void delete(String cityid) {
		try {
			String sql="delete from city where cityid=?";		
			qr.update(sql,cityid);
		} catch (SQLException e) {
			throw new RuntimeException("删除城市时出错了！"+e);
		}
		
	}

	/*
	 * 加载城市
	 */
	public City load(String cityid) {
		try {
			String sql="select * from city where cityid=?";
			return qr.query(sql, new BeanHandler<City>(City.class), cityid);
		} catch (SQLException e) {
			throw new RuntimeException("加载城市时出错了！"+e);
		}
	}

	/*
	 * 添加城市
	 */
	public void add(City city) {
		try {
			String sql="insert into city values(?,?,?,?)";
			Object[] params={city.getCityid(),city.getName(),
					city.getIntroduce(),city.getImage()};
			qr.update(sql, params);
		} catch (SQLException e) {
			throw new RuntimeException("添加城市时出错了！"+e);
		}
		
	}

}
