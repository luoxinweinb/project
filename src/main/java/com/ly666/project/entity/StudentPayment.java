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
public class StudentPayment implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "payment_id", type = IdType.AUTO)
    private Integer paymentId;

    @TableField("student_id")
    private Integer studentId;

    @TableField("staff_id")
    private Integer staffId;

    @TableField("payment_situation")
    private String paymentSituation;

    @TableField("payment_method")
    private Integer paymentMethod;

    @TableField("payment_time")
    private LocalDateTime paymentTime;

    @TableField("discount_amount")
    private Double discountAmount;

    @TableField("should_amount")
    private Double shouldAmount;

    @TableField("real_amount")
    private Double realAmount;

    @TableField("debt_amount")
    private Double debtAmount;

    @TableField("payment_remark")
    private String paymentRemark;


}
