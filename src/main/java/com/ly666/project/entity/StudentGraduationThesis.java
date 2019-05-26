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
public class StudentGraduationThesis implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "student_paper_id", type = IdType.AUTO)
    private Integer studentPaperId;

    @TableField("student_id")
    private Integer studentId;

    @TableField("staff_id")
    private Integer staffId;

    @TableField("paper_title")
    private String paperTitle;

    /**
     * 称谓
     */
    @TableField("paper_teacher")
    private String paperTeacher;

    @TableField("paper_start")
    private String paperStart;

    /**
     * 政治面貌
     */
    @TableField("paper_time")
    private LocalDateTime paperTime;

    /**
     * 何处工作任职
     */
    @TableField("paper_score")
    private String paperScore;

    @TableField("paper_comments")
    private String paperComments;

    @TableField("reg_time")
    private LocalDateTime regTime;

    @TableField("paper_note")
    private String paperNote;


}
