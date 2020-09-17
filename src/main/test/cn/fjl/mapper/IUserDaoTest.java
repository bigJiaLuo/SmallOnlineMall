package cn.fjl.mapper;

import cn.fjl.domain.User;
import org.junit.Test;

import java.util.List;

public class IUserDaoTest extends BaseMapper {

    @Test
    public void findAll() {
        List<User> users = userDao.findAll();
        for (User user : users) {
            System.out.println(user);
        }
    }

    @Test
    public void save() {
//        User user = new User();
//        user.setUsername("1");
//        user.setPassword("1");
//        userDao.save(user);
    }

    @Test
    public void findByUsernamePassword() {
        User user = new User();
        user.setUsername("1");
        user.setPassword("1");
        List<User> flag = userDao.findByUsernamePassword(user);
        System.out.println(flag);
    }

    @Test
    public void findGoodsCount() {
        Integer goodsCount = userDao.findGoodsCount(1);
        System.out.println(goodsCount);
    }

    @Test
    public void updateCount() {
//        userDao.updateCount(2,1);
    }

    @Test
    public void updateUser() {
//        User user = new User();
//        user.setUid(1);
//        user.setPassword("123");
//        user.setUsername("luo");
//        userDao.updateUser(user);
//        User one = userDao.findOne(1);
//        System.out.println(one);
    }
}