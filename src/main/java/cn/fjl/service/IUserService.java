package cn.fjl.service;

import cn.fjl.domain.User;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/20 17:30
 *
 * 用户业务接口
 */
public interface IUserService {

    /**
     * 保存 给定的 User对象 信息
     * @param user
     * @return
     */
    boolean save(User user);

    /**
     * 根据用户名密码  判断是否存在该用户
     * @param user
     * @return true 存在
     */
    public User findByUsernamePassword(User user);


    /**
     * 查询 当前 用户，现有购物车 中数目
     * @param uid 用户id
     * @return 购物车总数
     */
    Integer findGoodsCount(Integer uid);

    /**
     * 根据uid 查找唯一的用户
     * @param uid
     * @return
     */
    User findOneByUid(Integer uid);

    /**
     * 根据提供的user对象 ，修改库中对应的记录
     * @param user
     */
    void update(User user);
}
