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
public class StudentPracticeSkills implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "student_practice_id", type = IdType.AUTO)
    private Integer studentPracticeId;

    @TableField("student_id")
    private Integer studentId;

    @TableField("staff_id")
    private Integer staffId;

    @TableField("practice_start")
    private LocalDateTime practiceStart;

    @TableField("practice_end")
    private LocalDateTime practiceEnd;

    @TableField("practice_address")
    private String practiceAddress;

    @TableField("practice_content")
    private String practiceContent;

    @TableField("practice_score")
    private String practiceScore;

    @TableField("reg_time")
    private LocalDateTime regTime;

    @TableField("practice_note")
    private String practiceNote;


}
