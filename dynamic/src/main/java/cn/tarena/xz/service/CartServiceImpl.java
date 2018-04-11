package cn.tarena.xz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.xz.mapper.CartMapper;
import cn.tarena.xz.pojo.Cart;
import cn.tarena.xz.pojo.ShowCart;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
	private CartMapper cartMapper;
	@Override
	public int addCart(String uId,String gId, String count){
		return cartMapper.addCart(uId,gId,count);
	}
	@Override
	public int upateCart(String uId,String gId,String count){
		return cartMapper.upateCart(uId,gId,count);
	}
	@Override
	public Cart getCartItem(String uId,String gId) {
		return cartMapper.getCartItem(uId,gId);
	}
	@Override
	public ShowCart[] getAllCart(String uId) {
		return cartMapper.getAllCart(uId);
	}
	@Override
	public ShowCart getCartItemFull(String uId,String gId) {
		return cartMapper.getCartItemFull(uId,gId);
	}
	@Override
	public void delCartByGId(String uId, String gId) {
		cartMapper.delCartByGId(uId,gId);
	}
	@Override
	public Integer getCartNum(String uId) {
		return cartMapper.getCartNum(uId);
	}
	@Override
	public ShowCart[] getCartByUId_Num(String uId, Integer cur, Integer num) {
		return cartMapper.getCartByUId_Num(uId, cur, num);
	}
}
