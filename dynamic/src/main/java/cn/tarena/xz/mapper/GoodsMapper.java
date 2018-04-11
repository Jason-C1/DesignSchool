package cn.tarena.xz.mapper;

import org.apache.ibatis.annotations.Param;

import cn.tarena.xz.pojo.Goods;

public interface GoodsMapper {
	public Goods getGoodsById(@Param("gId")String gId);
}
