package cn.tarena.xz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.xz.mapper.ShowMapper;
import cn.tarena.xz.mapper.UserMapper;
import cn.tarena.xz.pojo.Course;
import cn.tarena.xz.pojo.ShowUser;
import cn.tarena.xz.pojo.Teacher;
import cn.tarena.xz.pojo.User;

@Service
public class ShowServiceImpl implements ShowService{
	@Autowired
	private ShowMapper showMapper;
	@Override
	public Course[] ShowCourseAll() {
		return showMapper.ShowCourseAll();
	}
	@Override
	public ShowUser[] ShowUserAll() {
		return showMapper.ShowUserAll();
	}
	@Override
	public Teacher[] ShowTeacherAll() {
		return showMapper.ShowTeacherAll();
	}

}