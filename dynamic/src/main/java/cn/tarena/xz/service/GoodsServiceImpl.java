package cn.tarena.xz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.xz.mapper.GoodsMapper;
import cn.tarena.xz.pojo.Goods;

@Service
public class GoodsServiceImpl implements GoodsService{
	@Autowired
	private GoodsMapper goodsMapper;
	@Override
	public Goods getGoodsById(String gId){
		return goodsMapper.getGoodsById(gId);
	}
	
	
}
