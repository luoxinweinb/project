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
public class EvaluationXueqi implements Serializable {

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

    @TableField("evaluation_content")
    private String evaluationContent;

    @TableField("evaluation_time")
    private LocalDateTime evaluationTime;

    @TableField("evaluation_note")
    private String evaluationNote;


}
