package cn.tarena.xz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.xz.mapper.UserMapper;
import cn.tarena.xz.pojo.User;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;
	@Override
	public User findUserByUP(String username, String pwd) {
		return userMapper.findUserByUP(username, pwd);
	}
	@Override
	public int signup(String name, String username, String pwd, String gender, String age, String phone) {
		return userMapper.signup(name, username, pwd, gender, age, phone);
	}
	
}
 