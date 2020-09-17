package cn.fjl.service;

import cn.fjl.domain.ShoppingCart;

import java.util.List;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/19 16:49
 */

public interface IShoppingCartService {
    /**
     * 查询所有 购物车中的商品
     * @return
     */
    List<ShoppingCart> findAll(Integer uid);

    /**
     * 将指定商品，添加到 指定用户购物车，并且刷新 用户购物车总数
     * @param gid 商品id
     * @param uid 用户id
     * @param count 商品加入次数
     */
    void addGoods(Integer gid, Integer uid,Integer count);

    /**
     * 根据 商品id 找到该用户下 拥有此商品的总数
     * @param gid 商品id
     * @param uid 用户id
     * @return
     */
    Integer findCountByGid(Integer gid,Integer uid);

    /**
     * 删除指定用户的 商品，在购物车中
     * @param gid 指定 商品id
     * @param uid 用户id
     */
    void delete(Integer gid, Integer uid);

    /**
     * 根据 指定用户，指定商品 找出在购物车该商品的具体信息
     * @param gid 商品id
     * @param uid 用户id
     * @param count 该商品在购物车中的数目
     * @return
     */
    ShoppingCart findOneByGidUid(Integer gid,Integer uid,Integer count);
}
