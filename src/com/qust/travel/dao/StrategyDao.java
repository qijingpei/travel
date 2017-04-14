package com.qust.travel.dao;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.itcast.jdbc.TxQueryRunner;

import com.qust.travel.domain.Strategy;

/*
 * 攻略的dao层
 */
public class StrategyDao {
	private QueryRunner qr=new TxQueryRunner();

	/*
	 * 添加攻略
	 */
	public void add(Strategy strategy) {
		String sql="insert into citystrategy values(?,?,?,?,?,?,?,?)";
		//处理Util.Date类型的time转换成sql类型的Timestamp对象
		//即转换成数据库能操作的类型。
		//注：第一个getTime（）是获得strategy对象的time，第二个getTime（）是把获取到的time转换成想要的格式
		Timestamp timestamp=new Timestamp(strategy.getTime().getTime());
		Object[] params={strategy.getCstid(),strategy.getSimage(),strategy.getTitle(),
				timestamp,strategy.getPageview(),strategy.getContent(),
				strategy.getCity().getCityid(),strategy.getUser().getUserid()};
		try {
			qr.update(sql, params);
		} catch (SQLException e) {
			throw new RuntimeException("添加攻略时出错了！"+e);
		}
		
	}

	/*
	 * 查询所有攻略
	 */
	public List<Strategy> findAll() {
		String sql="SELECT* FROM cityStrategy";
		try {
			return qr.query(sql, new BeanListHandler<Strategy>(Strategy.class));
		} catch (SQLException e) {
			throw new RuntimeException("查询所有攻略时出错了！"+e);
		}
	}

	/*
	 * 加载单个攻略
	 */
	public Strategy load(String cstid) {
		String sql="select * from cityStrategy where cstid=?";
		try {
			return qr.query(sql, new BeanHandler<Strategy>(Strategy.class), cstid);
		} catch (SQLException e) {
			throw new RuntimeException("加载单个攻略时出错了！"+e);
		}		
	}
	/*
	 * 删除单个攻略
	 */
	public void delete(String cstid) {
		String sql="delete from cityStrategy where cstid=?";
		try {
			qr.update(sql, cstid);
		} catch (SQLException e) {
			throw new RuntimeException("加载单个攻略时出错了！"+e);
		}		
	}

	/*
	 * 按照城市id查询攻略
	 */
	public List<Strategy> findByCityid(String cityid) {
		String sql="select * from cityStrategy where cityid=?";
		try {
			return qr.query(sql, new BeanListHandler<Strategy>(Strategy.class), cityid);
		} catch (SQLException e) {
			throw new RuntimeException("按照城市id查询攻略时出错了！"+e);
		}
	}

	/*
	 * 按照用户id查询攻略
	 */
	public List<Strategy> findByUserid(String userid) {
		String sql="select * from cityStrategy where userid=?";
		try {
			return qr.query(sql, new BeanListHandler<Strategy>(Strategy.class), userid);
		} catch (SQLException e) {
			throw new RuntimeException("按照用户id查询攻略时出错了！"+e);
		}
	}

	/*
	 * 修改攻略
	 * 	>只修改title和content
	 */
	public void update(Strategy strategy) {
		String sql="update cityStrategy set title=?,content=?,simage=? where cstid=?";
		try {
			Object[] params={strategy.getTitle(),strategy.getContent(),strategy.getSimage(),
					strategy.getCstid()};
			qr.update(sql, params);
		} catch (SQLException e) {
			throw new RuntimeException("修改攻略时出错了！"+e);
		}
	}
}
