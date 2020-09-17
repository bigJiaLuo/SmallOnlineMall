package cn.fjl.service.impl;

import cn.fjl.domain.Order;
import cn.fjl.domain.ShoppingCart;
import cn.fjl.mapper.IOrderDao;
import cn.fjl.mapper.IShoppingCartDao;
import cn.fjl.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/23 17:49
 */
@Service("orderService")
@Transactional(propagation = Propagation.SUPPORTS,readOnly = true)
public class OrderServiceImpl implements IOrderService {

    @Autowired
    private IShoppingCartDao shoppingCartDao;
    @Autowired
    private IOrderDao orderDao;

    @Override
    public ShoppingCart findOneByGidUid(Integer gid, Integer uid, Integer count) {
        return shoppingCartDao.findOneByGidUid(gid,uid);
    }

    @Override
    @Transactional(propagation=Propagation.REQUIRED,readOnly = false)
    public void addOne(Integer uid, Integer gid, Integer count) {
        orderDao.addOne(uid,gid,count);
    }

    @Override
    public List<Order> findAll(Integer uid) {
        return orderDao.findAll(uid);
    }

    @Override
    @Transactional(propagation=Propagation.REQUIRED,readOnly = false)
    public void deleteByOidUid(Integer oid, Integer uid) {
        orderDao.deleteByOidUid(oid,uid);
    }
}
