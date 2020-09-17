package cn.fjl.mapper;

import cn.fjl.domain.ShoppingCart;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/19 16:20
 * 购物车 处理器
 */
@Repository("shoppingCartDao")
public interface IShoppingCartDao {
    /**
     *  对实体类中的 实体属性 进行赋值
     *  查询 指定用户 在 购物车中 拥有的 购物车信息集合List
     * @return
     */
    @Select("select sid,gid,uid,count(*) FROM shoppingcart where uid=#{uid} GROUP BY gid,uid")
    @Results(id = "shoppingCartMap",value = {
            @Result(id = true,column = "sid",property = "sid"),
            @Result(column = "gid",property = "gid"),
            @Result(column = "uid",property = "uid"),
            @Result(column = "gid",property = "goods",one = @One(select = "cn.fjl.mapper.IGoodsDao.findOne",fetchType = FetchType.LAZY)),
            @Result(column = "uid",property = "user",one = @One(select = "cn.fjl.mapper.IUserDao.findOne",fetchType = FetchType.LAZY))
    })
    public List<ShoppingCart> findAll(Integer uid);

    /**
     * 根据 商品 和 用户，查询 该商品在购物车中的 数目
     * @param gid 商品id
     * @param uid 用户id
     * @return 商品数目
     */
    @Select("select count(*) from shoppingCart where gid=#{gid} and uid = #{uid} ")
    Integer findByGidUid(@Param("gid") Integer gid, @Param("uid") Integer uid);


    /**
     * 将指定 商品id，和追加后的 数目，添加到 指定用户 中的 购物车数据库中
     * @param gid
     * @param uid
     */
    @Insert(" insert into shoppingCart values(null,#{gid},#{uid})")
    void addGoods(@Param("gid") Integer gid, @Param("uid") Integer uid);


    /**
     * 根据 指定 uid 查询，该用户 所有的 购物车商品数目
     * @param uid
     * @return
     */
    @Select("select count(*) from shoppingCart where uid=#{uid}")
    Integer findCountByUid(Integer uid);

    /**
     * 删除 指定商品id代表行，在 指定用户中
     * @param gid
     * @param uid
     */
    @Delete("delete from shoppingCart where gid=#{gid} and uid=#{uid}")
    void deleteBySidUid(@Param("gid") Integer gid, @Param("uid") Integer uid);


    /**
     * 根据 指定用户，指定商品，查找该商品信息
     * @param gid 用户id
     * @param uid 商品id
     * @return
     */
    @Select("select * from shoppingCart where uid=#{uid} and gid=#{gid} group by uid")
    @Results(id = "shoppingCartOne",value = {
            @Result(id = true,column = "sid",property = "sid"),
            @Result(column = "gid",property = "gid"),
            @Result(column = "uid",property = "uid"),
            @Result(column = "gid",property = "goods",one = @One(select = "cn.fjl.mapper.IGoodsDao.findOne")),
            @Result(column = "uid",property = "user",one = @One(select = "cn.fjl.mapper.IUserDao.findOne"))
    })
    ShoppingCart findOneByGidUid(@Param("gid") Integer gid, @Param("uid") Integer uid);
}
