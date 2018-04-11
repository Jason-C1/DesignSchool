package cn.tarena.xz.mapper;

import org.apache.ibatis.annotations.Param;

import cn.tarena.xz.pojo.Cart;
import cn.tarena.xz.pojo.ShowCart;

public interface CartMapper {

	int addCart(@Param("uId")String uId, @Param("gId")String gId, @Param("count")String count);

	int upateCart(@Param("uId")String uId, @Param("gId")String gId, @Param("count")String count);

	Cart getCartItem(@Param("uId")String uId, @Param("gId")String gId);

	ShowCart[] getAllCart(@Param("uId")String uId);

	ShowCart getCartItemFull(@Param("uId")String uId, @Param("gId")String gId);

	void delCartByGId(@Param("uId")String uId, @Param("gId")String gId);

	Integer getCartNum(@Param("uId")String uId);

	ShowCart[] getCartByUId_Num(@Param("uId")String uId,@Param("cur")Integer cur,@Param("num")Integer num);

}
