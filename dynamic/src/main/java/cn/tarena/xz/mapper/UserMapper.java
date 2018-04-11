package cn.tarena.xz.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.ui.Model;

import cn.tarena.xz.pojo.User;

public interface UserMapper {
	public User findUserByUP(@Param("username")String username,@Param("pwd")String pwd);
	public int signup(@Param("name")String name,@Param("username")String username,@Param("pwd")String pwd,@Param("gender")String gender,@Param("age")String age,@Param("phone")String phone);
}
