package cn.tarena.xz.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import cn.tarena.xz.pojo.Course;
import cn.tarena.xz.pojo.DataList;
import cn.tarena.xz.pojo.ShowUser;
import cn.tarena.xz.pojo.Teacher;
import cn.tarena.xz.pojo.User;
import cn.tarena.xz.service.ShowService;


@Controller
@ResponseBody
public class ShowController {
	@Autowired
	private ShowService showService;
	@RequestMapping(value = "/api/allUser", produces = "application/json; charset=utf-8")
	public String allUser() {
		// 创建返回的数据包
		DataList dataList = new DataList();
		ShowUser[] userList = showService.ShowUserAll();
		if (userList == null) {

			dataList.setMessage("查询失败");
			return dataList.send();
		}
		dataList.setMessage("查询成功");
		dataList.setData(userList);
		return dataList.send();
	}

	@RequestMapping(value = "/api/allCourse", produces = "application/json; charset=utf-8")
	public String allCourse() {
		// 创建返回的数据包
		DataList dataList = new DataList();
		Course[] courseList = showService.ShowCourseAll();
		if (courseList == null) {
			dataList.setMessage("查询失败");
			return dataList.send();
		}
		dataList.setMessage("查询成功");
		dataList.setData(courseList);
		return dataList.send();
	}
	@RequestMapping(value = "/api/allTeacher", produces = "application/json; charset=utf-8")
	public String allTeacher() {
		// 创建返回的数据包
		DataList dataList = new DataList();
		Teacher[] teacherList = showService.ShowTeacherAll();
		if (teacherList == null) {
			dataList.setMessage("查询失败");
			return dataList.send();
		}
		dataList.setMessage("查询成功");
		dataList.setData(teacherList);
		return dataList.send();
	}
}
