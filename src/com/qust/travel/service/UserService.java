package com.qust.travel.service;

import com.qust.travel.dao.UserDao;
import com.qust.travel.domain.User;
import com.qust.travel.exception.UserException;

//User的业务逻辑层
public class UserService {
	private UserDao userDao=new UserDao();

	/*
	 * 按照id查询用户
	 */
	public User findByUserid(String userid) {
		return userDao.findByUserid(userid);
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
