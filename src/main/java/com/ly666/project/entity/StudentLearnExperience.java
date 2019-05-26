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
public class StudentLearnExperience implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "student_learn_id", type = IdType.AUTO)
    private Integer studentLearnId;

    @TableField("student_id")
    private Integer studentId;

    @TableField("staff_id")
    private Integer staffId;

    /**
     * 起讫年月
     */
    @TableField("learn_allyears")
    private String learnAllyears;

    /**
     * 学校或机关名称
     */
    @TableField("learn_school")
    private String learnSchool;

    /**
     * 学习或任职
     */
    @TableField("learn_position")
    private String learnPosition;

    /**
     * 登记时间
     */
    @TableField("reg_time")
    private LocalDateTime regTime;

    /**
     * 备注
     */
    @TableField("learn_note")
    private String learnNote;


}
