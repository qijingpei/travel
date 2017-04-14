package com.qust.travel.dao;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.itcast.jdbc.TxQueryRunner;

import com.qust.travel.domain.TravelItem;

public class TravelItemDao {
	private QueryRunner qr = new TxQueryRunner();
	public List<TravelItem> findAll() {
		String sql="select * from travelitem";
		try {
			return qr.query(sql, new BeanListHandler<TravelItem>(TravelItem.class));
		} catch (Exception e) {
			throw new RuntimeException("查询所有跟团旅游项目时时出错了！"+e);
		}
	}
	public void add(TravelItem travelItem) {
		String sql = "insert into travelItem "
				+"(simage,title,price,startTime,days,startPlace,endPlace,content,tagid)"
				+" VALUES(?,?,?,?,?,?,?,?,?)";
		try {
			Object params[] = {travelItem.getSimage(),travelItem.getTitle(),
					travelItem.getPrice(),travelItem.getStartTime(),travelItem.getDays(),travelItem.getStartPlace(),
					travelItem.getEndPlace(),travelItem.getContent(),1 /*1 表示旅行社的id编号travelItem.getTagid()*/
					};
			qr.update(sql , params);
		} catch (Exception e) {
			throw new RuntimeException("添加跟团旅游项目时时出错了！"+e);
		}
		
	}
	/*
	 * 加载单个
	 */
	public TravelItem load(int titid) {
		String sql="select * from travelItem where titid = ?";
		try {
			return qr.query(sql, new BeanHandler<TravelItem>(TravelItem.class) , titid);
		} catch (Exception e) {
			throw new RuntimeException("加载单个跟团旅游项目时时出错了！"+e);
		}
	}
	/*
	 * 删除单个单个旅游项目
	 */
	public void delete(int titid) {
		String sql = "delete from travelItem where titid = ?";
		try {
			qr.update(sql, titid);
		} catch (Exception e) {
			throw new RuntimeException("删除单个跟团旅游项目时时出错了！"+e);
		}
		
	}
	/*
	 * 修改旅游项目信息
	 */
	public void edit(TravelItem travelItem) {
		String sql = "update travelItem set simage=?, title=?, price=?,"
				+ "startTime=?, days=?, startPlace=?, endPlace=?, content=? where titid=?";
		try {
			Object params[] = {travelItem.getSimage(), travelItem.getTitle(), travelItem.getPrice(),
					travelItem.getStartTime(),travelItem.getDays(), travelItem.getStartPlace(),travelItem.getEndPlace(),
					travelItem.getContent(),travelItem.getTitid()};
			qr.update(sql, params);
		} catch (Exception e) {
			throw new RuntimeException("修改旅游项目的信息时出错了");
		}
		
	}

}
