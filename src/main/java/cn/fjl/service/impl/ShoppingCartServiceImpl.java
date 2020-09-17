package cn.fjl.service.impl;

import cn.fjl.domain.ShoppingCart;
import cn.fjl.mapper.IShoppingCartDao;
import cn.fjl.mapper.IUserDao;
import cn.fjl.service.IShoppingCartService;
import cn.fjl.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/19 16:50
 */
@Service("shoppingCartService")
@Transactional(propagation= Propagation.SUPPORTS,readOnly = true)
public class ShoppingCartServiceImpl implements IShoppingCartService {
    @Autowired
    private IShoppingCartDao shoppingCartDao;
    @Autowired
    private IUserDao userDao;
    @Override
    public List<ShoppingCart> findAll(Integer uid) {
        return shoppingCartDao.findAll(uid);
    }

    @Override
    @Transactional(propagation=Propagation.REQUIRED,readOnly = false)
    public void addGoods(Integer gid, Integer uid,Integer count) {
//        1.将商品添加到指定 用户中,根据加入次数
        try {
            while (count > 0){
                count--;
                shoppingCartDao.addGoods(gid,uid);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return;
        }
//        2.刷新用户中购物车商品总数
//        2.1查询该用户 在购物车库中添加的所有商品
        Integer countByUser = shoppingCartDao.findCountByUid(uid);
//        2.2将用户商品总数存入 对应用户表中
        userDao.updateCount(countByUser,uid);
    }

    @Override
    public Integer findCountByGid(Integer gid, Integer uid) {
       return  shoppingCartDao.findByGidUid(gid,uid);
    }

    @Override
    @Transactional(propagation=Propagation.REQUIRED,readOnly = false)
    public void delete(Integer gid, Integer uid) {
        shoppingCartDao.deleteBySidUid(gid,uid);
    }

    @Override
    public ShoppingCart findOneByGidUid(Integer gid, Integer uid, Integer count) {
        return shoppingCartDao.findOneByGidUid(gid,uid);
    }
}
