package cn.fjl.service;

import cn.fjl.domain.Order;
import cn.fjl.domain.ShoppingCart;

import java.util.List;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/23 17:22
 * 订单 逻辑层
 */
public interface IOrderService {
    /**
     * 查询 指定用户 购物车中
     * @param gid
     * @param uid
     * @param count
     * @return
     */
    ShoppingCart findOneByGidUid(Integer gid, Integer uid, Integer count);

    /**
     * 添加 订单信息
     */
    void addOne(Integer uid,Integer gid,Integer count);

    /**
     * 查询该用户的 所有订单信息
     * @param uid
     * @return
     */
    List<Order> findAll(Integer uid);

    /**
     * 根据指定 用户id和订单id，删除 在订单中的记录
     * @param oid 订单id
     * @param uid 用户id
     */
    void deleteByOidUid(Integer oid, Integer uid);
}
