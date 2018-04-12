package cn.tarena.xz.service;

import org.apache.ibatis.annotations.Param;

import cn.tarena.xz.pojo.Course;
import cn.tarena.xz.pojo.ShowUser;
import cn.tarena.xz.pojo.Teacher;
import cn.tarena.xz.pojo.User;

public interface ShowService {

	Course[] ShowCourseAll();

	ShowUser[] ShowUserAll();

	Teacher[] ShowTeacherAll();

}
