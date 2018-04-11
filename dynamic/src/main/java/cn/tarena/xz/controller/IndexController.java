package cn.tarena.xz.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;


import cn.tarena.xz.service.UserService;

@Controller
public class IndexController {
	@RequestMapping("/")
	public String toDefault() {
		return "index";
	}
	@RequestMapping("/index")
	public String index() {
	
		return "index";
	}
	@RequestMapping("/cour")
	public String cour() {
		return "cour";
	}
	@RequestMapping("/teac")
	public String teac() {
		return "teac";
	}
	@RequestMapping("/rank")
	public String rank() {
		return "rank";
	}
	@RequestMapping("/reg")
	public String reg() {
		return "reg";
	}
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
}
