package cn.fjl.mapper;

import cn.fjl.domain.ShoppingCart;
import org.junit.Test;

import java.util.List;

public class IShoppingCartDaoTest extends BaseMapper {

    @Test
    public void findAll() {
        List<ShoppingCart> all = shoppingCartDao.findAll(1);
        for (ShoppingCart shoppingCart : all) {
            System.out.println(shoppingCart);
        }
    }

    @Test
    public void findByGidUid() {
        Integer count = shoppingCartDao.findByGidUid(1, 1);
        System.out.println(count);
    }

    @Test
    public void addGoods() {
        shoppingCartDao.addGoods(1,1);
    }

    @Test
    public void findCountByUid() {
        Integer countByUid = shoppingCartDao.findCountByUid(1);
        System.out.println(countByUid);
    }

    @Test
    public void deleteBySidUid() {
        shoppingCartDao.deleteBySidUid(1,1);
    }

    @Test
    public void findOneByGidUid() {
        ShoppingCart oneByGidUid = shoppingCartDao.findOneByGidUid(1, 1);
        System.out.println(oneByGidUid);
    }


}