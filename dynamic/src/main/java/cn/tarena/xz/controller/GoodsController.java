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

import cn.tarena.xz.pojo.Cart;
import cn.tarena.xz.pojo.Goods;
import cn.tarena.xz.pojo.ShowCart;
import cn.tarena.xz.pojo.User;
import cn.tarena.xz.service.CartService;
import cn.tarena.xz.service.GoodsService;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	@Autowired
	private GoodsService goodsService;
	@Autowired
	private CartService cartService;
//	
//	@RequestMapping("/toDetails")
//	public String toDetails(String gId,Model model) {
//		if(StringUtils.isEmpty(gId)){
//			return "redirect:/index";
//		}
//		Goods goods = goodsService.getGoodsById(gId);
//		model.addAttribute("goods", goods);
//		return "details";
//	}
//
//	@RequestMapping("/toCart")
//	public String toCart(HttpSession session,Model model) {
//		User  user = (User) session.getAttribute("user");
//		if(user == null) {
//			model.addAttribute("errInfo","NotLoggedIn");
//			return "redirect:/user/login";
//		}
//		return "cart";
//	}
//	@ResponseBody
//	@RequestMapping(value="/showCart",produces = "application/json; charset=utf-8")
//	public String showCart(String cur,String num,HttpSession session,Model model) {
//		User  user = (User) session.getAttribute("user");
//		String uId =user.getuId();
//		// 2.获取每页能显示的条目和当前页数，如果没有则设置默认值
//		Integer currentPage = (cur == null) ? 1 : Integer.parseInt(cur);
//		Integer currentNum = (num == null) ? 5 : Integer.parseInt(num);
//		// 当总页数小于当前页数时显示第一页
//		Integer all = ((cartService.getCartNum(uId)-1)/currentNum) + 1;
//		if(all < currentPage){
//			currentPage=1;
//		}
//		Integer current = (currentPage-1)*currentNum;
//		ShowCart[] cartList = cartService.getCartByUId_Num(uId, current, currentNum);
//		ObjectMapper m = new ObjectMapper();  
//		String list = null;
//		try {
//			list = m.writeValueAsString(cartList);
//		} catch (JsonProcessingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		return "{\"list\":"+list+",\"num\":"+currentNum+",\"cur\":"+currentPage+",\"all\":"+all+"}";
//	}
//
//	@RequestMapping("/addCart")
//	public String addCart(String gId,Integer count,HttpSession session,Model model) {
//		//gId若不存在,为错误查询,跳到首页
//		if(StringUtils.isEmpty(gId)){
//			return "redirect:/index";
//		}
//		//从session取出uId,若不存在则前往登陆界面
//		User  user = (User) session.getAttribute("user");
//		if(user == null) {
//			model.addAttribute("message","NotLoggedIn");
//			return "redirect:/user/login";
//		}
//		String uId =user.getuId();
//		//取出相应购物车数据若不存在这插入,若存在则判断count是否存在若存在则只增一
//		Cart Item =cartService.getCartItem(uId, gId);
//		String countStr;
//		if(Item == null) {
//			if(count == null) {
//				countStr =	"1";
//			}else {
//				countStr = count.toString();
//			}
//			cartService.addCart(uId, gId, countStr);
//		}else {
//			//将count加上原有数量,不存在则默认增加1
//			if(count == null) {
//				Integer tempCount = Item.getCount()+1;
//				countStr =	tempCount.toString();
//			}else {
//				Integer tempCount = Item.getCount()+count;
//				countStr =	tempCount.toString();
//			}
//			cartService.upateCart(uId, gId,countStr);
//		}
//		model.addAttribute("gId", gId);
//		return "redirect:/goods/toDetails";
//	}
//	@ResponseBody
//	@RequestMapping(value="/delByGId")
//	public String delByGId(String gId,HttpSession session,Model model) {
//		User  user = (User) session.getAttribute("user");
//		String uId =user.getuId();
//		System.out.println("???");
//		cartService.delCartByGId(uId,gId);
//		return "";
//	}
//	@ResponseBody
//	@RequestMapping(value="/changeCart",produces = "application/json; charset=utf-8")
//	public String changeCart(String gId,Integer count,HttpSession session,Model model) {
//		//gId若不存在,为错误查询,跳到首页
//		if(StringUtils.isEmpty(gId)){
//			String message = "商品未知";
//			return message;
//		}
//		//从session取出uId,若不存在则前往登陆界面
//		User user = (User) session.getAttribute("user");
//		if(user == null) {
//			String message = "未登录";
//			return message;
//		}
//		String uId =user.getuId();
//		//取出相应购物车数据若不存在这插入,若存在则判断count是否存在若存在则只增一
//		Cart Item =cartService.getCartItem(uId, gId);
//		String countStr;
//		if(Item == null) {
//			String message = "无商品记录";
//			return message;
//		}
//		countStr =	count.toString();
//		cartService.upateCart(uId, gId,countStr);
//		ShowCart cartList = cartService.getCartItemFull(uId, gId);
//		if(cartList == null) {
//			model.addAttribute("errInfo","购物车无内容");
//		}
//		ObjectMapper m = new ObjectMapper();  
//		String data = null;
//		try {
//			data = m.writeValueAsString(cartList);
//		} catch (JsonProcessingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}  
//		return data;
//	}

}
