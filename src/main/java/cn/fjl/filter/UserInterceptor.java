package cn.fjl.filter;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/24 14:41
 *
 * 用户登录权限验证 拦截器
 */
public class UserInterceptor implements HandlerInterceptor {
//    以下三个父类方法,父类给出 default 实现方式
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession();
        Object user = session.getAttribute("user");
        if(user != null){
            return true;
        }else{
//            用户不存在，跳转首页.提示用户登录,false,代表未登录
            session.setAttribute("loginFlag",false);
            request.getRequestDispatcher("/index.jsp").forward(request,response);
            return false;
        }
    }

//    @Override
//    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
//
//    }
//
//    @Override
//    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
//
//    }
}
