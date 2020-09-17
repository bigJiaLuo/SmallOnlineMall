package cn.fjl.mapper;

import cn.fjl.domain.Order;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/23 17:09
 * 订单表 持久层
 */
@Repository("orderDao")
public interface IOrderDao {

    /**
     * 将传入信息，添加进订单表
     * @param gid
     * @param uid
     * @param count
     */
    @Insert("insert into `order` values (null,'已支付',#{count},#{gid},#{uid},now())")
    void addOne(@Param("uid") Integer uid, @Param("gid") Integer gid, @Param("count") Integer count);

    /**
     * 根据 用户id，查询出该用户的所有信息
     * @param uid
     * @return
     */

    @Select("select * from `order` where uid=#{uid}")
    @Results(id = "orderMap",value = {
            @Result(id = true,column = "oid",property = "oid"),
            @Result(column = "orderStatus",property = "orderStatus"),
            @Result(column = "count",property = "count"),
            @Result(column = "payDate",property = "payDate"),
            @Result(column = "gid",property = "goods",one = @One(select = "cn.fjl.mapper.IGoodsDao.findOne",fetchType = FetchType.LAZY)),
            @Result(column = "uid",property = "user",one = @One(select = "cn.fjl.mapper.IUserDao.findOne",fetchType = FetchType.LAZY))
    })
    List<Order> findAll(Integer uid);

    /**
     * 删除指定的 订单记录，  该用户下的 订单号
     * @param oid 订单号
     * @param uid 用户id
     */
    @Delete("delete from `order` where oid=#{oid} and uid = #{uid}")
    void deleteByOidUid(@Param("oid") Integer oid, @Param("uid") Integer uid);

}
