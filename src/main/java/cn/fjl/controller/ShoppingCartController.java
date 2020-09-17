package cn.fjl.controller;

import cn.fjl.domain.ShoppingCart;
import cn.fjl.service.IShoppingCartService;
import cn.fjl.service.IUserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/19 16:51
 * 购物车  处理器
 */
@Controller
@RequestMapping("/shoppingCart")
public class ShoppingCartController {
    @Autowired
    private IShoppingCartService shoppingCartService;
    @Autowired
    private IUserService userService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll(Integer uid) {
        ModelAndView modelAndView = new ModelAndView();
//        1。获取指定用户 下的所有购物车信息List
        List<ShoppingCart> shoppingCarts = shoppingCartService.findAll(uid);
//        2.给信息List中每种商品计算出中数目，加入list中的每个元素
        for (ShoppingCart shoppingCart : shoppingCarts) {
            Integer count = shoppingCartService.findCountByGid(shoppingCart.getGid(), uid);
            shoppingCart.setCount(count);
        }
        modelAndView.addObject("shoppingCarts", shoppingCarts);
        modelAndView.setViewName("shoppingCart_list");
        return modelAndView;
    }

    /**
     * 删除指定用户中， sid 的购物车信息
     *
     * @param gid
     * @return
     */
    @RequestMapping("/delete/{gid}/{uid}")
    public String delete(@PathVariable Integer gid, @PathVariable Integer uid, HttpSession session) {
//1.        设置返回视图
//2.    删除 该用户的购物车列表
        shoppingCartService.delete(gid, uid);
//    3.调用findAll（）方法
        List<ShoppingCart> shoppingCarts = shoppingCartService.findAll(uid);
        session.setAttribute("shoppingCarts", shoppingCarts);
        return "redirect:/pages/shoppingCart_list.jsp";
    }

    /**
     * 加入购物车
     *
     * @param gid
     * @param uid
     * @param count
     * @return 当前用户，现有购物车数目
     */
    @ResponseBody
    @RequestMapping("/{gid}/{uid}/{count}/addGoods.do")
    public Object addGoods(@PathVariable Integer gid, @PathVariable Integer uid, @PathVariable Integer count) {
        HashMap<String, Object> map = new HashMap<>();
//        1.将商品加入对应用户的购物车中
        shoppingCartService.addGoods(gid, uid, count);
//        2.查询当前用户现有购物车商品数目
        Integer shoppingCartCount = userService.findGoodsCount(uid);
//        3.将用户购物车商品总数返回
        map.put("shoppingCartCount", shoppingCartCount);
        return map;
    }



}
