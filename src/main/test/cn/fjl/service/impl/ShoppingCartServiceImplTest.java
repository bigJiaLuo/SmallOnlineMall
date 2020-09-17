package cn.fjl.service.impl;

import cn.fjl.service.impl.BaseMapper;
import org.junit.Test;

public class ShoppingCartServiceImplTest extends BaseMapper {

    @Test
    public void findAll() {
    }

    @Test
    public void addGoods() {
        shoppingCartService.addGoods(0,0,2);
    }
}