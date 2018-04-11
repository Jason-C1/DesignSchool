package cn.tarena.xz.service;

import cn.tarena.xz.pojo.Cart;
import cn.tarena.xz.pojo.ShowCart;

public interface CartService {

	int addCart(String uId, String gId, String count);

	int upateCart(String uId, String gId, String count);

	Cart getCartItem(String uId, String gId);

	ShowCart[] getAllCart(String uId);

	ShowCart getCartItemFull(String uId, String gId);

	void delCartByGId(String uId, String gId);

	ShowCart[] getCartByUId_Num(String uId, Integer cur, Integer num);

	Integer getCartNum(String uId);



}
