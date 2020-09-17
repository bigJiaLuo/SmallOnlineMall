package cn.fjl.service;

import cn.fjl.domain.Goods;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/12 16:22
 */
public interface IGoodsService {

    /**
     * 查询所有的商品，返回一个List
     * @return
     */
    List<Goods> findAll();

    /**
     * 查询 自动 gid 的商品
     * @param gid
     * @return
     */
    Goods findOne(Integer gid);

    /**
     * 查询 首页的所有商品，返回一个List
     * @return
     */
    List<Goods> findAll_index();

    /**
     * 根据提供的条件自动查询出相应的 商品结果集
     * @param cid
     * @param currentPage
     * @param pageSize
     * @param condition
     * @return
     */
    PageInfo<Goods> findAllByCondition(Integer cid, Integer currentPage, Integer pageSize, String condition);
}
