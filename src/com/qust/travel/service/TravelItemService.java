package com.qust.travel.service;

import java.util.List;

import com.qust.travel.dao.TravelItemDao;
import com.qust.travel.domain.TravelItem;

public class TravelItemService {
	private TravelItemDao travelItemDao = new TravelItemDao();
	//查询所有旅游项目
	public  List<TravelItem> findAll() {
		return travelItemDao.findAll();
	}
	//增加旅游项目
	public void add(TravelItem travelItem) {
		travelItemDao.add(travelItem);
		
	}
	//加载单个
	public TravelItem load(int titid) {
		return travelItemDao.load(titid);
	}
	//删除单个旅游项目
	public void delete(int titid) {
		travelItemDao.delete(titid);
		
	}
	//修改
	public void edit(TravelItem travelItem) {
		travelItemDao.edit(travelItem);
	}

}
