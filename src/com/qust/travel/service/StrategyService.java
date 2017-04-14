package com.qust.travel.service;

import java.util.List;

import com.qust.travel.dao.StrategyDao;
import com.qust.travel.domain.Strategy;
/*
 * 攻略的service层
 */
public class StrategyService {
	private StrategyDao strategyDao=new StrategyDao();
	/*
	 * 查询所有攻略
	 */
	public List<Strategy> findAll() {
		return strategyDao.findAll();
	}
	/*
	 * 删除单个攻略
	 */
	public void delete(String cstid){
		strategyDao.delete(cstid);
	}

	/*
	 * 添加攻略
	 */
	public void add(Strategy strategy) {
		strategyDao.add(strategy);
	}

	/*
	 * 加载单个攻略
	 */
	public Strategy load(String cstid) {
		return strategyDao.load(cstid);
	}

	/*
	 * 按照城市id查询攻略
	 */
	public List<Strategy> findByCityid(String cityid) {
		return strategyDao.findByCityid(cityid);
	}

	/*
	 * 按照用户id查询攻略
	 */
	public List<Strategy> findByUserid(String userid) {
		return strategyDao.findByUserid(userid);
	}

	/*
	 * 修改攻略
	 * 	>只修改title和content
	 */
	public void edit(Strategy strategy) {
		strategyDao.update(strategy);		
	}
}
