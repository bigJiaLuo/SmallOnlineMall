package cn.fjl.service.impl;

import cn.fjl.domain.User;
import cn.fjl.mapper.IUserDao;
import cn.fjl.service.IUserService;
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
 * @date 2020/4/20 17:31
 */

@Service("userService")
@Transactional(propagation= Propagation.SUPPORTS,readOnly = true)
public class UserServiceImpl implements IUserService {
    @Autowired
    private IUserDao userDao;
    @Override
    @Transactional(propagation=Propagation.REQUIRED,readOnly = false)
    public boolean save(User user) {

        try {
            userDao.save(user);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public User findByUsernamePassword(User user) {
        List<User> users = userDao.findByUsernamePassword(user);
        String msg = null;
        try {
            if(users.size() > 1 || users.size() <1){
                msg = "用户名重复，或者用户不存在！";
            }
            return users.get(0);
        } catch (Exception e) {
            System.out.println(msg);
            e.printStackTrace();
            return null;
        }

    }

    @Override
    public Integer findGoodsCount(Integer uid) {
        return userDao.findGoodsCount(uid);
    }

    @Override
    public User findOneByUid(Integer uid) {
        return userDao.findOne(uid);
    }

    @Override
    @Transactional(propagation=Propagation.REQUIRED,readOnly = false)
    public void update(User user) {
        userDao.updateUser(user);
    }
}
