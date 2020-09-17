package cn.fjl.mapper;

import cn.fjl.domain.Goods;
import org.junit.Test;

import java.util.List;

public class IGoodsDaoTest extends BaseMapper {

    @Test
    public void findAll() {
        List<Goods> all = goodsDao.findAll();
        for (Goods goods : all) {
            System.out.println(goods);
        }
    }

    @Test
    public void findOne() {
        Goods one = goodsDao.findOne(1);
        System.out.println(one);
    }

    @Test
    public void findAllByCondition() {
        List<Goods> goodsList = goodsDao.findAllByCondition(1, 1, 6, "%米%");
        for (Goods goods : goodsList) {
            System.out.println(goods);
        }
    }
}