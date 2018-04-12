package cn.tarena.xz.mapper;

import org.apache.ibatis.annotations.Param;

import cn.tarena.xz.pojo.Course;
import cn.tarena.xz.pojo.ShowUser;
import cn.tarena.xz.pojo.User;

public interface UserMapper {
	public User findUserByUP(@Param("username")String username,@Param("pwd")String pwd);
	public void signup(@Param("uName")String username,@Param("uPwd")String pwd,@Param("uPic")String picPath);
	public Course[] findCourseById(@Param("uId")String uId);
	public ShowUser findUserById(@Param("uId")String uId);
}