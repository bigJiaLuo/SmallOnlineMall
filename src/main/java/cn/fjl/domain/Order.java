package cn.fjl.domain;

import lombok.Data;

import java.util.Date;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/23 16:27
 * 订单表
 */
@Data
public class Order {
    private Integer oid;//订单id
    private String orderStatus;//支付状态
    private Integer gid;
    private Integer uid;
    private Integer count;
    private Goods goods;// 商品外键
    private User user;//用户外键
    private Date payDate;//支付时间
}
