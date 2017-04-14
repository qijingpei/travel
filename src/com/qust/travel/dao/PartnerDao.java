package com.qust.travel.dao;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import cn.itcast.jdbc.TxQueryRunner;

import com.qust.travel.domain.Partner;
import com.qust.travel.domain.User;

public class PartnerDao {
	private QueryRunner qr = new TxQueryRunner();
	/*
	 * 查询所有同行驴友的招募信息
	 */
	public List<Partner> findAll() {
		String sql = "select * from findPartner";
		try {
			return qr.query(sql, new BeanListHandler<Partner>(Partner.class));
		} catch (Exception e) {
			throw new RuntimeException("查询所有同行驴友的招募信息时出错了");
		}
	}
	/*
	 * 添加一条同行驴友的招募信息
	 */
	public void add(Partner partner) {
		String sql = "INSERT INTO findPartner(title,simage,startPlace,endPlace,"
				+ "startTime,days,signinNumber,phonenumber,introduce,userid)"
				+" VALUES(?,?,?,?,? , ?,?,?,?,?)"; 
		try {
			Object[] params = {partner.getTitle(), partner.getSimage(), partner.getStartPlace(),
					partner.getEndPlace(), partner.getStartTime(),partner.getDays(),
					partner.getSigninNumber(),partner.getPhoneNumber(),partner.getIntroduce(),
					partner.getUser().getUserid()};
			qr.update(sql, params);
		} catch (Exception e) {
			throw new RuntimeException("添加一条同行驴友的招募信息时出错了");
		}
	}
	/*
	 * 按照用户id查询招募信息
	 */
	public List<Partner> findByUserid(String userid) {
		String sql = "select * from findPartner where userid = ?";
		try {
			return qr.query(sql, new BeanListHandler<Partner>(Partner.class),userid);
		} catch (Exception e) {
			throw new RuntimeException("按照用户id查询同行驴友的招募信息时出错了");
		}
	}
	/*
	 * 加载单个同行驴友的招募信息
	 */
	public Partner load(int fpaid) {
		String sql = "select * from findPartner where fpaid = ?";
		try {
			return qr.query(sql, new BeanHandler<Partner>(Partner.class),fpaid);
		} catch (Exception e) {
			throw new RuntimeException("加载单个同行驴友的招募信息时出错了");
		}
	}
	/*
	 * 编辑
	 */
	public void edit(Partner partner) {
		String sql = "update findPartner set title=?, simage=?,startPlace=?,endPlace=?,"
				+ "startTime=?,days=?,phonenumber=?,introduce=?)"
				+" where fpaid=?"; 
		try {
			Object[] params = {partner.getTitle(), partner.getSimage(), partner.getStartPlace(),
					partner.getEndPlace(), partner.getStartTime(),partner.getDays(),
					partner.getPhoneNumber(),partner.getIntroduce(),
					 partner.getFpaid()};
			qr.update(sql, params);
		} catch (Exception e) {
			throw new RuntimeException("编辑一条同行驴友的招募信息时出错了");
		}
	}

}
