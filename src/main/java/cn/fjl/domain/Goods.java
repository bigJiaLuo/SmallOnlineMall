package cn.fjl.domain;

import lombok.Data;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/12 16:14
 */

@Data
public class Goods {
    private Integer gid;//商品id
    private String gName;//商品名
    private String picNumber;//商品图片 编号
    private Integer cid;//分类id
    private String price;//价格
    private String gIntroduction;//商品介绍
}
