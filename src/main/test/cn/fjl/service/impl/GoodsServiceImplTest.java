package cn.fjl.service.impl;

import cn.fjl.domain.Goods;
import com.github.pagehelper.PageInfo;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/ApplicationContext.xml"})
public class GoodsServiceImplTest {
    @Autowired
    private GoodsServiceImpl goodsService;
    @Test
    public void findAllByCondition() {
//        List<Goods> goodsList = goodsService.findAllByCondition();
//        for (Goods goods : goodsList) {
//            System.out.println(goods);
//        }
    }

    @Test
    public void testFindAllByCondition() {
        PageInfo<Goods> goodsPageInfo = goodsService.findAllByCondition(null, null, null, null);
        List<Goods> goodsList = goodsPageInfo.getList();
        for (Goods goods : goodsList) {
            System.out.println(goods);
        }
    }
}