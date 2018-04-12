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
	@RequestMapping(value = "/")
	public String toDefault() {
		return "index";
	}
	@RequestMapping(value = "/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/cour")
	public String cour() {
		return "cour";
	}
	@RequestMapping(value = "/teac")
	public String teac() {
		return "teac";
	}
	@RequestMapping(value = "/rank")
	public String rank() {
		return "rank";
	}
	@RequestMapping(value = "/reg")
	public String reg() {
		return "reg";
	}
	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}
	@RequestMapping(value = "/mine")
	public String mine() {
		return "mine";
	}
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.setAttribute("uId",null);
		return "index";
	}
}
