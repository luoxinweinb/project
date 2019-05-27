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
 * 邮件信息表
 * </p>
 *
 * @author luoyi
 * @since 2019-05-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class EmailInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "email_id", type = IdType.AUTO)
    private Integer emailId;//编号

    @TableField("staff_id")
    private Integer staffId;//员工编号

    @TableField("email_title")
    private String emailTitle;//主题

    @TableField("email_content")
    private String emailContent;//邮件内容

    @TableField("email_time")
    private LocalDateTime emailTime;//发送时间

    @TableField("email_man")
    private String emailMan;//接收人

    @TableField("email_addr")
    private String emailAddr;//邮件地址

    @TableField("email_state")
    private String emailState;//邮件状态


}
