package com.ly666.project.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 短信信息表
 * </p>
 *
 * @author luoyi
 * @since 2019-05-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class MessafeInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "messafe_id", type = IdType.AUTO)
    private Integer messafeId;//编号

    @TableField("staff_id")
    private Integer staffId;//员工编号

    @TableField("messafe_content")
    private String messafeContent;//短信内容

    @TableField("messafe_man")
    private String messafeMan;//接收人

    @TableField("messafe_phone")
    private String messafePhone;//电话号码

    @TableField("messafe_time")
    private LocalDateTime messafeTime;//发送时间

    @TableField("messafe_state")
    private String messafeState;//短信状态


}
