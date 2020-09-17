import cn.fjl.domain.User;
import org.junit.Assert;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/9 10:36
 */
public class Test {
    public void test(){
        User user = new User();
        user.setPassword("123");
    }

    @org.junit.Test
    public void add(){
        int a = 1+1;
        Assert.assertEquals(1,a);
    }
}
