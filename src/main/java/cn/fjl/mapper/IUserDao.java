package cn.fjl.mapper;

import cn.fjl.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/9 11:01
 * 操作 User的 持久层
 */
@Repository("userDao")
public interface IUserDao {

    @Select("select * from user")
    public List<User> findAll();

    @Select("select * from user where uid = #{uid}")
    public User findOne(Integer uid);

    @Insert("insert into user values(null,#{username},#{password},null)")
    public void save(User user);

    @Select("select * from user where username=#{username} and password=#{password}")
    public List<User> findByUsernamePassword(User user);


    /**
     * 查询 指定用户 当前购物车数目
     * @param uid
     * @return
     */
    @Select("select shoppingCartCount from user where uid=#{uid}")
    Integer findGoodsCount(Integer uid);

    /**
     * 将countByUser 替换 用户表中的 商品总数
     * @param countByUser
     */
    @Update("update user set shoppingCartCount=#{countByUser} where uid=#{uid}")
    void updateCount(@Param("countByUser") Integer countByUser, @Param("uid") Integer uid);

    /**
     * 根据传入的 User对象，修改其数据库中对应的用户记录，修改用户名和密码
     * @param user
     */
    @Update("update `user` set username=#{username},password=#{password} where uid=#{uid}")
    void updateUser(User user);

}
