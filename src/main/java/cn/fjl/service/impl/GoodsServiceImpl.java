package cn.fjl.service.impl;

import cn.fjl.domain.Goods;
import cn.fjl.mapper.IGoodsDao;
import cn.fjl.service.IGoodsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/12 16:22
 */
@Service("goodsService")
//先设置 该service中的所有方法为 只读事务
@Transactional(propagation = Propagation.SUPPORTS,readOnly = true)
public class GoodsServiceImpl implements IGoodsService {
    @Autowired
    private IGoodsDao goodsDao;

    @Override
    public List<Goods> findAll() {
        return goodsDao.findAll();
    }

    @Override
    public Goods findOne(Integer gid) {
        return goodsDao.findOne(gid);
    }

    @Override
    public List<Goods> findAll_index() {
        return goodsDao.findAll_index();
    }

    @Override
    public PageInfo<Goods> findAllByCondition(Integer cid, Integer currentPage, Integer pageSize, String condition) {

//        1.判断 页码是否存在
        if (currentPage == null || currentPage < 1){
//            不给出当前页，默认为第一页
            currentPage = 1;
        }
//        2.判断 pageSize 页面 的大小，一页的记录数 是否给出
        if (pageSize == null || pageSize < 1){
            pageSize = 6;
        }
        //       1.计算出页码，相当于分页查询出的结果集中的第几页
        Integer pageNum = currentPage;
        condition = "%"+condition+"%";
//        2.开始分页,lambda表达式中 的参数 不可修改
        Integer finalPageSize = pageSize;
        String finalCondition = condition;
        PageInfo<Goods> goodsPageInfo = PageHelper.startPage(pageNum, pageSize).doSelectPageInfo(
                () -> goodsDao.findAllByCondition(cid, pageNum, finalPageSize, finalCondition));
//        3.查询 根据条件得到的数据结果集
        return goodsPageInfo;
    }

}
