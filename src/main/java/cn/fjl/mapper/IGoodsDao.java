package cn.fjl.mapper;

import cn.fjl.domain.Goods;
import cn.fjl.mapper.sqlProvider.GoodsProvider;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/12 16:13
 */
@Repository("goodsDao")
public interface IGoodsDao {
    @Select("select * from goods")
    public List<Goods> findAll();

    @Select("select * from goods where gid=#{gid}")
    Goods findOne(Integer gid);

    /**
     *  查询首页 中的商品信息
     * @return 商品信息List
     */
    @Select("select * from goods_index")
    List<Goods> findAll_index();

    /**
     * 根据 多种条件 动态查询 不同得结果集
     * @param cid 分类id
     * @param pageNum 当前页码
     * @param pageSize 页面大小
     * @param condition 查询条件
     */
    @SelectProvider(type = GoodsProvider.class,method = "findAllByCondition")
    List<Goods> findAllByCondition(@Param("cid") Integer cid, @Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize, @Param("condition") String condition);
}
