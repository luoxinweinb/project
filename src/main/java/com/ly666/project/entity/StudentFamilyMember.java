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
public class StudentFamilyMember implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "student_family_id", type = IdType.AUTO)
    private Integer studentFamilyId;

    @TableField("student_id")
    private Integer studentId;

    @TableField("staff_id")
    private Integer staffId;

    @TableField("family_name")
    private String familyName;

    /**
     * 称谓
     */
    @TableField("family_app")
    private String familyApp;

    @TableField("family_age")
    private Integer familyAge;

    /**
     * 政治面貌
     */
    @TableField("family_zcmm")
    private String familyZcmm;

    /**
     * 何处工作任职
     */
    @TableField("workplace")
    private String workplace;

    @TableField("reg_time")
    private LocalDateTime regTime;

    @TableField("family_note")
    private String familyNote;


}
