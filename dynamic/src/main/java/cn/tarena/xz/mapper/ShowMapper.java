package cn.tarena.xz.mapper;

import cn.tarena.xz.pojo.Course;
import cn.tarena.xz.pojo.ShowUser;
import cn.tarena.xz.pojo.Teacher;

public interface ShowMapper {

	Course[] ShowCourseAll();

	ShowUser[] ShowUserAll();

	Teacher[] ShowTeacherAll();

}
