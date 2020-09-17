package cn.fjl.domain;

import lombok.Data;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/9 10:25
 * 用户实体类
 */


@Data public class User {
    private Integer uid;//用户id
    private String username;//用户名
    private String password;//密码
    private Integer shoppingCartCount;//购物车数目

}
