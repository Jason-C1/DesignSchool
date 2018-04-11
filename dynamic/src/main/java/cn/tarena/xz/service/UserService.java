package cn.tarena.xz.service;

import org.apache.ibatis.annotations.Param;

import cn.tarena.xz.pojo.User;

public interface UserService {

	User findUserByUP(String username, String pwd);
	int signup(String name,String username,String pwd,String gender,String age,String phone);
}
