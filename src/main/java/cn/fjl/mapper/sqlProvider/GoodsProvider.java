package cn.fjl.mapper.sqlProvider;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.jdbc.SQL;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/25 10:57
 */
public class GoodsProvider {

    public String findAllByCondition(@Param("cid") Integer cid, @Param("pageNum") Integer pageNum, @Param("pageSize") Integer pageSize, @Param("condition") String condition){
        String sql = new SQL(){
            {
                SELECT("*");
                FROM("goods");
//                判断是否 传入cid，商品类别
                if (cid != null && cid > 0){
                    WHERE("cid=#{cid}");
                }
// 注意 ！ 的优先级问题
                if(condition != null && (!condition.equalsIgnoreCase("%null%"))){
                    WHERE("gName like #{condition}");
                    OR();
                    WHERE("gIntroduction like #{condition}");
                }
            }
        }.toString();
        return sql;
    }
}
