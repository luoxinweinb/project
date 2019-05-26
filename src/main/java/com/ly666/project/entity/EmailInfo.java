package com.ly666.project.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
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
    private Integer emailId;

    @TableField("staff_id")
    private Integer staffId;

    @TableField("email_title")
    private String emailTitle;

    @TableField("email_content")
    private String emailContent;

    @TableField("email_time")
    private LocalDateTime emailTime;

    @TableField("email_man")
    private String emailMan;

    @TableField("email_addr")
    private String emailAddr;

    @TableField("email_state")
    private String emailState;


}
