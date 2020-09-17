package cn.fjl.controller;

import cn.fjl.domain.Goods;
import cn.fjl.domain.result.PageBean;
import cn.fjl.service.IGoodsService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.naming.event.ObjectChangeListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.awt.event.MouseEvent;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/12 10:56
 * 商品 处理器
 */
@Controller
@RequestMapping("/goods")

public class GoodsController {
    @Autowired
    private IGoodsService goodsService;

    /**
     * 查询所有商品
     * @return
     */
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(HttpSession session){
        ModelAndView modelAndView = new ModelAndView();
        List<Goods> goods = goodsService.findAll();
        session.setAttribute("goodsList",goods);
//        modelAndView.addObject("goodsList",goods);
        modelAndView.setViewName("goods_list");
        return modelAndView;
    }

    @RequestMapping("/findAllByCondition")
    public ModelAndView findAllByCondition(Integer cid,Integer currentPage,Integer pageSize,String condition){
        ModelAndView modelAndView = new ModelAndView();
        PageBean<Object> pageBean = new PageBean<>();

        pageBean.setCid(cid);
        PageInfo<Goods> goodsPageInfo = goodsService.findAllByCondition(cid,currentPage,pageSize,condition);
        pageBean.setCurrentPage(goodsPageInfo.getPageNum());
        pageBean.setCondition(condition);
        pageBean.setPageSize(goodsPageInfo.getPageSize());
        modelAndView.addObject("goodsPageInfo",goodsPageInfo);
        modelAndView.setViewName("goods_list");
        modelAndView.addObject("pageBean",pageBean);
        return modelAndView;
    }


    @RequestMapping("/findAll_index")
    public String findAll_index(HttpSession session){
//        1.获取 在首页的所有商品信息集合
        List<Goods> goods_indexList = goodsService.findAll_index();
//        2.存入model
        session.setAttribute("goods_indexList",goods_indexList);
        return "goods_list";
    }


    /**
     * 查询 指定 的商品信息，并返回到该商品的 详情页
     * @param gid
     * @param request
     * @return
     */
    @RequestMapping("/{gid}")
    public ModelAndView findOne(@PathVariable Integer gid, HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        Goods goods = goodsService.findOne(gid);
        modelAndView.addObject("goods_one",goods);
        modelAndView.setViewName("commodity_details");
        return modelAndView;
    }
}
