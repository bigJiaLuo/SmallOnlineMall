package cn.fjl.domain.result;

import lombok.Data;

/**
 * TOOD
 *
 * @author luo
 * @version 1.0
 * @date 2020/4/21 11:04
 */
@Data
public class JsonMsg {
    private String success;
    private Boolean flag;
    private String error;
}
