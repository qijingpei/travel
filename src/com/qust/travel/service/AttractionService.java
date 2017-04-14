package com.qust.travel.service;

import java.util.List;

import com.qust.travel.dao.AttractionDao;
import com.qust.travel.domain.Attraction;

public class AttractionService {
	private AttractionDao attractionDao=new AttractionDao();
	
	public List<Attraction> findByCityid(String cityid){
		return attractionDao.findByCityid(cityid);
	}

	public Attraction load(String attid) {
		
		return attractionDao.findByAttid(attid);
	}
	/*
	 * 添加景点
	 */

	public void add(Attraction attraction) {
		attractionDao.add(attraction);
		
	}
	public void delete(String attid) {
		attractionDao.delete(attid);
		
	}

	public void edit(Attraction attraction) {
		attractionDao.edit(attraction);
		
	}

	/*
	 * 查询所有景点
	 */
	public List<Attraction> all() {
		return attractionDao.all();
	}

}
