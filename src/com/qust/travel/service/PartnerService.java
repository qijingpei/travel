package com.qust.travel.service;

import java.util.List;

import com.qust.travel.dao.PartnerDao;
import com.qust.travel.dao.UserDao;
import com.qust.travel.domain.Partner;
import com.qust.travel.domain.User;
import com.qust.travel.exception.UserException;

//User的业务逻辑层
public class PartnerService {
	private UserDao userDao=new UserDao();
	private PartnerDao partnerDao = new PartnerDao();

	/*
	 * 编辑
	 */
	public void edit(Partner partner) {
		partnerDao.edit(partner);
		
	}
	/*
	 * 加载单个驴友招募信息
	 */
	public Partner load(int fpaid) {
		return partnerDao.load(fpaid);
	}
	/*
	 * 查询所有同行驴友的招募信息
	 */
	public List<Partner> findAll() {
		return partnerDao.findAll();
	}
	/*
	 * 添加
	 */
	public void add(Partner partner) {
		partnerDao.add(partner);
	}
	/*
	 * 按照用户id查询招募信息
	 */
	public List<Partner> findByUserid(String userid) {
		return partnerDao.findByUserid(userid);
	}
	/*
	 * 注册
	 */
	public void regist(User form) throws UserException{
			
	    User user=userDao.findByUsername(form.getUsername());
		if(user!=null) throw new UserException("用户名已被注册");
		
		userDao.add(form);
	}

	/*
	 * 登录
	 */
	public User login(User form) throws UserException {
		//检验用户名是否存在
		User user=userDao.findByUsername(form.getUsername());
		if(user ==null) throw new UserException("用户名不存在");
		//检验密码是否正确
		if(!form.getPassword().equals(user.getPassword())) {
			throw new UserException("密码错误");
		}
		return user;
		
	}
	
	
	
	
}
