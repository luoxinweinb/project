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
public class EvaluationInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "evaluation_id", type = IdType.AUTO)
    private Integer evaluationId;

    @TableField("student_id")
    private Integer studentId;

    @TableField("discipline_id")
    private Integer disciplineId;

    @TableField("staff_id")
    private Integer staffId;

    @TableField("class_id")
    private Integer classId;

    @TableField("evaluation_xueqi")
    private String evaluationXueqi;

    @TableField("evaluation_month")
    private String evaluationMonth;

    @TableField("evaluation_major")
    private String evaluationMajor;

    @TableField("score1")
    private Integer score1;

    @TableField("score2")
    private Integer score2;

    @TableField("score3")
    private Integer score3;

    @TableField("score4")
    private Integer score4;

    @TableField("score5")
    private Integer score5;

    @TableField("score6")
    private Integer score6;

    @TableField("sum")
    private Integer sum;

    @TableField("evaluation_time")
    private LocalDateTime evaluationTime;

    @TableField("evaluation_note")
    private String evaluationNote;


}
