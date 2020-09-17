package cn.fjl.domain.result;

import lombok.Data;

import java.util.List;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/25 9:07
 * 分页 实体
 */
@Data
public class PageBean<T> {
    private Integer currentPage;//当前页码
    private Integer pageSize;//每页显示的条数
    private String condition;//查询条件
    private Integer cid;//分类id
}
