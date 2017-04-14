package com.qust.travel.service;

import java.util.List;

import com.qust.travel.dao.CityDao;
import com.qust.travel.domain.City;
import com.qust.travel.domain.Strategy;

/*
 * 城市的service层
 */
public class CityService {
	private CityDao cityDao=new CityDao();
	
	/*
	 * 根据城市名查询城市
	 */
	public City findByCityname(String cityname) {
		return cityDao.findByCityname(cityname);
	}
	
	/*
	 * 查询所有城市
	 */
	public List<City> findAll() {
		return cityDao.findAll();
	}

	/*
	 * 按照id查询城市
	 */
	public City findByCityid(String cityid) {
		return cityDao.findByCityid(cityid);
	}

	/*
	 * 删除城市
	 */
	public void delete(String cityid) {
		cityDao.delete(cityid);
		
	}

	/*
	 * 加载城市
	 */
	public City load(String cityid) {
		return cityDao.load(cityid);
	}

	/*
	 * 添加城市
	 */
	public void add(City city) {
		cityDao.add(city);
	}




}
