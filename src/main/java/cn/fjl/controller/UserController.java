package cn.fjl.controller;

import cn.fjl.domain.User;
import cn.fjl.domain.result.JsonMsg;
import cn.fjl.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/20 16:59
 *  管理用户的  处理器
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserServiceImpl userService;

    /**
     * 保存用户
     * @param user
     * @return
     */
    @RequestMapping("/register")
    public ModelAndView register(User user){
        ModelAndView modelAndView = new ModelAndView();
        boolean save = userService.save(user);
        if (save){
            modelAndView.setViewName("login");
            return modelAndView;
        }else {
            modelAndView.setViewName("error");
            return modelAndView;
        }
    }

    /**
     * 用户登录
     * @param user
     * @param session
     * @return
     */
    @RequestMapping("/login")
    @ResponseBody
    public Object login(User user, HttpSession session){
//        接收不到，前台参数，2020年4月20日18:41:21
        User user_login = userService.findByUsernamePassword(user);
        HashMap<String, Object> map = new HashMap<>();
        if(user_login != null){
            session.setAttribute("user",user_login);
//            标记已经登录
            session.setAttribute("loginFlag",true);
            map.put("flag",true);
           return map;
        }
//        返回错误页面
//        jsonMsg.setError("用户名或密码错误！");
//        jsonMsg.setFlag(false);
        map.put("error","用户名或者密码错误！");
        map.put("flag",false);
        return map;
    }


    /**
     * 将 所填的User表单信息，与对应数据库中数据替换
     * 修改用户信息
     * @param user
     * @param request
     * @return
     */
    @RequestMapping("/update")
    @ResponseBody
    public Object update(User user, HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView();
        HashMap<String, Object> map = new HashMap<>();
        try {
            userService.update(user);
        } catch (Exception e) {
            e.printStackTrace();
            map.put("msg","修改失败，用户名重复");
        }
        User user1 = userService.findOneByUid(user.getUid());
        request.setAttribute("user",user1);

        map.put("msg","修改信息成功！");
        return map;
    }

    /**
     * 查询出当前用户信息，跳转到 用户个人中心，渲染数据
     * @param uid
     * @return
     */
    @RequestMapping("/findOneUpdate/{uid}")
    public ModelAndView findOneUpdate(@PathVariable Integer uid){
        ModelAndView modelAndView = new ModelAndView();
//        1.根据uid 查询唯一的用户
        User user = userService.findOneByUid(uid);
//        2.将用户保存进model，转发视图
        modelAndView.addObject("user",user);
        modelAndView.setViewName("userUpdate");
        return modelAndView;
    }


    /**
     * 注销用户
     * @param uid
     * @param session
     * @param request
     * @return
     */
    @RequestMapping("/exit/{uid}")
    public String exit(@PathVariable Integer uid, HttpSession session,HttpServletRequest request){
        request.setAttribute("user",null);
        session.invalidate();
        return "login";
    }

}
