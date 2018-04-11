package cn.tarena.xz.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.tarena.xz.pojo.DataList;
import cn.tarena.xz.pojo.User;
import cn.tarena.xz.service.UserService;


@Controller
public class UseController {
	
	@Autowired
	private UserService userService;

	@ResponseBody
	@RequestMapping(value="/api/login",produces = "application/json; charset=utf-8")
	public String login(String username,String pwd,HttpSession session) {
		//创建返回的数据包
		DataList dataList = new DataList();
		//1.校验数据
		if(StringUtils.isEmpty(username)||StringUtils.isEmpty(pwd)){
			dataList.setMessage("用户名或密码不能为空");
			return dataList.send();
		}
		//2.根据用户名找对应的用户对象
		User user =userService.findUserByUP(username,pwd);
		//3.判断user是否为null
		if(user == null){
			//说明用户名或密码错误
			dataList.setMessage("用户名或密码错误");
			return dataList.send();
		}
		//4.证明用户名或密码正确，
		
		dataList.setMessage("登陆成功");
		dataList.setData(user);
		return dataList.send();
	}
	@RequestMapping("/user/toRegister")
	public String toRegister() {
		return "register";
	}
	
	@RequestMapping("/user/register")
	public String register(String name,String username,String pwd,String check,String gender,String age,String phone,String checkcode,Model model) {

		//1.校验数据
		if(StringUtils.isEmpty(username)){

			model.addAttribute("errInfo","请输入确认用户名");
			return "register";
		}else if(StringUtils.isEmpty(pwd)){
//			System.out.println("pwd");
			model.addAttribute("errInfo","请输入密码");
			return "register";
		}else if(StringUtils.isEmpty(check)){
//			System.out.println("check");
			model.addAttribute("errInfo","请输入确认密码");
			return "register";
		}else if(StringUtils.isEmpty(gender)){
//			System.out.println("gender：");
//			System.out.println(gender);
			model.addAttribute("errInfo","姓名错误");
			return "register";
		}else if(StringUtils.isEmpty(age)){
//			System.out.println("age");
			model.addAttribute("errInfo","请输入年龄");
			return "register";
		}else if(StringUtils.isEmpty(phone)){
//			System.out.println("phone");
			model.addAttribute("errInfo","请输入手机");
			return "register";
		}else if(StringUtils.isEmpty(checkcode)){
//			System.out.println("checkcode");
			model.addAttribute("errInfo","请输入验证码");
			return "register";
		}else if(!pwd.equals(check)){
//			System.out.println(!pwd.equals(check));
			model.addAttribute("errInfo","两次密码输入不同");
			return "register";
		}
		//2.根据用户名找对应的用户对象
		int result = userService.signup(name, username, pwd, gender, age, phone);
//		System.out.println(result);
//		//3.判断user是否为null
//		if(user == null){
//			//说明用户名或密码错误
//			model.addAttribute("errInfo","用户名或密码 错误");
//			return "register";
//		}
//		//4.证明用户名或密码正确，
		return "redirect:/index";
	}
}
