package cn.fjl.controller;

import cn.fjl.domain.Order;
import cn.fjl.domain.ShoppingCart;
import cn.fjl.service.IOrderService;
import cn.fjl.service.IShoppingCartService;
import cn.fjl.service.impl.OrderServiceImpl;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/23 16:31
 */
@Controller
@RequestMapping("/order")
public class OrderController {

    @Autowired
    private OrderServiceImpl orderService;
    @Autowired
    private IShoppingCartService shoppingCartService;



    /**
     * 查询 指定用户的所有 订单记录
     * @param uid
     * @return
     */
    @RequestMapping("/findAll/{uid}")
    public ModelAndView findAll(@PathVariable Integer uid){
        ModelAndView modelAndView = new ModelAndView();
        List<Order> orderList = orderService.findAll(uid);
        modelAndView.addObject("orderList",orderList);
        modelAndView.setViewName("order_list");
        return modelAndView;
    }
    /**
     * 支付指定 用户中的 购物车中的商品
     *
     * @param gid
     * @param uid
     * @param count
     * @return
     */
    @RequestMapping("/pay/{uid}/{gid}/{count}")
    public ModelAndView pay(@PathVariable("uid") Integer uid, @PathVariable("gid") Integer gid, @PathVariable("count") Integer count) {
        ModelAndView modelAndView = new ModelAndView();
//        1.获取该用户 需要支付的商品信息集合
        ShoppingCart shoppingCart = shoppingCartService.findOneByGidUid(gid,uid,count);

//       2.将订单信息存入用户订单表
        orderService.addOne(uid,gid,count);
//        3.找出 该用户的 所有订单信息List
        List<Order> orderList = orderService.findAll(uid);

//        4.删除 该用户购物车的 该订单
        shoppingCartService.delete(gid,uid);
//        5.将集合信息存入 model
        modelAndView.addObject("orderList",orderList);
        modelAndView.setViewName("order_list");
        return modelAndView;
    }



    @RequestMapping("/delete/{oid}/{uid}")
    public ModelAndView delete(@PathVariable Integer oid,@PathVariable Integer uid){
        ModelAndView modelAndView = new ModelAndView();
//        1.删除指定用户中的 订单
        orderService.deleteByOidUid(oid,uid);
//        2.再次查询订单记录
        List<Order> orderList = orderService.findAll(uid);
//        3.存入订单记录，转发
        modelAndView.addObject("orderList",orderList);
        modelAndView.setViewName("order_list");
        return modelAndView;
    }

}
