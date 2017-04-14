package com.qust.travel.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.itcast.jdbc.TxQueryRunner;

import com.qust.travel.domain.Attraction;

public class AttractionDao {
	private QueryRunner qr=new TxQueryRunner();
	
	public List<Attraction> findByCityid(String cityid){
		try{
			String sql="select attid,name,position,introduce from attraction where cityid=? and del=0";
			List<Attraction> attractionList=qr.query(sql, new BeanListHandler<Attraction>(Attraction.class),cityid);
			return attractionList;
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
	}

	
	/*
	 * 加载方法
	 */

	public Attraction findByAttid(String attid) {
		try{
			String sql="select * from attraction where attid=? and del=false";
			return qr.query(sql, new BeanHandler<Attraction>(Attraction.class),attid);
		}catch(SQLException e){
			throw new RuntimeException(e+"加载单个景点时出错了");
		}
	}
	/*
	 * 添加景点
	 */

	public void add(Attraction attraction) {
		try{
			System.out.println(attraction);
			String sql="insert into attraction values(?,?,?,?,?,?,?)";//image未设置
			Object []params={attraction.getAttid(),attraction.getName(),attraction.getImage(),
					attraction.getPosition(),attraction.getIntroduce(),"1",0};
			qr.update(sql, params);
		}catch(SQLException e){
			throw new RuntimeException("添加景点时出错了"+e);
		}
		
		
	}
	/*
	 * 删除景点（修改数据库中的del字段）
	 */
	public void delete(String attid){
		try{
			String sql="update attraction set del=true where attid=?";//image未设置
			qr.update(sql, attid);
		}catch(SQLException e){
			throw new RuntimeException(e);
		}
		
	}

	public void edit(Attraction attraction) {
		try{
			String sql="update attraction set name=?,position=?,introduce=?where attid=?";//image未设置
			Object []params={attraction.getName(),attraction.getPosition(),
					attraction.getIntroduce(),attraction.getAttid()};
			qr.update(sql, params);
		}catch(SQLException e){
			throw new RuntimeException(e);
		}		
	}


	/*
	 * 查询所有景点
	 */
	public List<Attraction> all() {
		try{
			String sql="select * from attraction where del=false";//image未设置
			return qr.query(sql, new BeanListHandler<Attraction>(Attraction.class));
		}catch(SQLException e){
			throw new RuntimeException("查询所有景点时出错了"+e);
		}
	}

}
