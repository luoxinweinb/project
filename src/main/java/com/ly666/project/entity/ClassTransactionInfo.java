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
public class ClassTransactionInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "class_transaction_id", type = IdType.AUTO)
    private Integer classTransactionId;

    @TableField("class_id")
    private Integer classId;

    @TableField("class_transaction_title")
    private String classTransactionTitle;

    @TableField("class_transaction_content")
    private String classTransactionContent;

    @TableField("class_transaction_person")
    private String classTransactionPerson;

    @TableField("class_transaction_time")
    private LocalDateTime classTransactionTime;

    @TableField("class_transaction_remark")
    private String classTransactionRemark;


}
