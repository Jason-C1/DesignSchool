package cn.tarena.xz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.xz.mapper.UserMapper;
import cn.tarena.xz.pojo.Course;
import cn.tarena.xz.pojo.ShowUser;
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
	public void signup(String username,String pwd,String picPath) {
		userMapper.signup(username, pwd, picPath);
	}
	@Override
	public Course[] findCourseById(String uId) {
		return userMapper.findCourseById(uId);
	}
	@Override
	public ShowUser findUserById(String uId) {
		return userMapper.findUserById(uId);
	}
	
}