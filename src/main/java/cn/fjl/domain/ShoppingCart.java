package cn.fjl.domain;

import lombok.Data;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/19 16:20
 * 使用lombok 自动生成  set，get等方法
 */
@Data
public class ShoppingCart {
    private Integer sid;//购物车id
    private Integer gid;//商品id
    private Integer uid;//用户id
    private Integer count;//该商品在购物车的总数目
    private User user;
    private Goods goods;
}
