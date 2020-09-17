package cn.fjl.mapper;

import cn.fjl.mapper.IGoodsDao;
import cn.fjl.mapper.IShoppingCartDao;
import cn.fjl.mapper.IUserDao;
import cn.fjl.service.IShoppingCartService;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/9 21:47
 */
public class BaseMapper {
//    Dao
     static ApplicationContext applicationContext;
     static IUserDao userDao;
     static IGoodsDao goodsDao;
     static IShoppingCartDao shoppingCartDao;
     static IOrderDao orderDao;
//     Service
    static IShoppingCartService shoppingCartService;

    static {
        applicationContext = new ClassPathXmlApplicationContext("classpath:config/spring/ApplicationContext.xml");
        userDao = applicationContext.getBean("userDao", IUserDao.class);
        goodsDao = applicationContext.getBean("goodsDao",IGoodsDao.class);
        shoppingCartDao = applicationContext.getBean("shoppingCartDao",IShoppingCartDao.class);
        orderDao = applicationContext.getBean("orderDao",IOrderDao.class);

//        Service
        shoppingCartService = applicationContext.getBean("shoppingCartService",IShoppingCartService.class);
    }
}
