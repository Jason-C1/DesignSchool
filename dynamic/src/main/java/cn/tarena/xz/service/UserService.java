package cn.tarena.xz.service;

import org.apache.ibatis.annotations.Param;

import cn.tarena.xz.pojo.Course;
import cn.tarena.xz.pojo.ShowUser;
import cn.tarena.xz.pojo.User;

public interface UserService {

	User findUserByUP(String username, String pwd);
	void signup(String username,String pwd,String picPath);
	Course[] findCourseById(String uId);
	ShowUser findUserById(String uId);
}
