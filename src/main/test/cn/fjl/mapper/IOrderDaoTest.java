package cn.fjl.mapper;

import cn.fjl.domain.Order;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.*;

public class IOrderDaoTest extends BaseMapper{

    @Test
    public void addOne() {
        orderDao.addOne(1,1,2);
    }


    @Test
    public void findAll(){
        List<Order> all = orderDao.findAll(2);
        for (Order order : all) {
            System.out.println(all);
        }
    }

    @Test
    public void deleteByOidUid() {
//        orderDao.deleteByOidUid(22,2);
    }
}