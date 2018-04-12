package cn.tarena.xz.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.tarena.xz.pojo.DataList;
import cn.tarena.xz.pojo.ShowUser;
import cn.tarena.xz.pojo.Course;
import cn.tarena.xz.pojo.User;
import cn.tarena.xz.service.UserService;

@Controller
@RequestMapping("/api")
@ResponseBody
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/login", produces = "application/json; charset=utf-8")
	public String login(String username, String pwd, HttpSession session) {
		// 创建返回的数据包
		DataList dataList = new DataList();
		// 1.校验数据
		if (StringUtils.isEmpty(username)) {
			dataList.setMessage("请输入确认用户名");
			return dataList.send();
		} else if (StringUtils.isEmpty(pwd)) {
			dataList.setMessage("请输入密码");
			return dataList.send();
		}
		// 2.根据用户名找对应的用户对象
		User user = userService.findUserByUP(username, pwd);
		// 3.判断user是否为null
		if (user == null) {
			// 说明用户名或密码错误
			dataList.setMessage("用户名或密码错误");
			return dataList.send();
		}
		// 4.证明用户名或密码正确，

		dataList.setMessage("登陆成功");
		session.setAttribute("uId", user.getuId());
		return dataList.send();
	}
	@RequestMapping(value = "/showUser", produces = "application/json; charset=utf-8")
	public String showUser(HttpSession session) {
		// 创建返回的数据包
		DataList dataList = new DataList();
		String uId = (String) session.getAttribute("uId");
		// 1.校验数据
		if (StringUtils.isEmpty(uId)) {
			dataList.setMessage("未登录");
			return dataList.send();
		}
		// 2.根据用户名找对应的用户对象
		ShowUser user = userService.findUserById(uId);
		Course[] CourseList = userService.findCourseById(uId);
		// 4.证明用户名或密码正确，
		dataList.setMessage("查询成功");
		dataList.setData(CourseList);
		dataList.setData2(user);
		
		return dataList.send();
	}
	@RequestMapping(value = "/register", produces = "application/json; charset=utf-8")
	public String register(String username, String pwd, String check, String picPath, HttpSession session) {
		// 创建返回的数据包
		System.out.println(pwd);
		System.out.println(check);
		DataList dataList = new DataList();
		// 1.校验数据
		if (StringUtils.isEmpty(username)) {
			dataList.setMessage("请输入确认用户名");
			return dataList.send();
		} else if (StringUtils.isEmpty(pwd)) {
			dataList.setMessage("请输入密码");
			return dataList.send();
		} else if (StringUtils.isEmpty(check)) {
			dataList.setMessage("请输入确认密码");
			return dataList.send();
		} else if (StringUtils.isEmpty(picPath)) {
			dataList.setMessage("请选择图片");
			return dataList.send();
		} else if (!pwd.equals(check)) {
			dataList.setMessage("两次密码输入不同");
			return dataList.send();
		}
		// 2.根据用户名找对应的用户对象
		userService.signup(username, pwd, picPath);
		User user = userService.findUserByUP(username, pwd);
		if (user == null) {
			// 说明用户名或密码错误
			dataList.setMessage("注册失败");
			return dataList.send();
		}
		session.setAttribute("uId", user.getuId());
		dataList.setMessage("注册成功");
		return dataList.send();
	}
	@RequestMapping(value = "/check", produces = "application/json; charset=utf-8")
	public String check(HttpSession session) {
		// 创建返回的数据包
				DataList dataList = new DataList();
				String uId = (String) session.getAttribute("uId");
				ShowUser user = userService.findUserById(uId);
				if (user==null) {
					dataList.setMessage("未登录");
					return dataList.send();
				}
				dataList.setMessage("已登录");
				dataList.setData(user);
				
				return dataList.send();
	}
	
}
