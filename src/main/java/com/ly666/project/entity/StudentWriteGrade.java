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
public class StudentWriteGrade implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "write_grade_id", type = IdType.AUTO)
    private Integer writeGradeId;

    @TableField("student_id")
    private Integer studentId;

    @TableField("staff_id")
    private Integer staffId;

    @TableField("class_id")
    private Integer classId;

    @TableField("discipline_id")
    private Integer disciplineId;

    @TableField("write_grade")
    private String writeGrade;

    @TableField("write_grade_time")
    private LocalDateTime writeGradeTime;

    @TableField("write_grade_note")
    private String writeGradeNote;

    @TableField("write_grade_xuenian")
    private String writeGradeXuenian;

    /**
     * 学期
     */
    @TableField("write_grade_xueqi")
    private String writeGradeXueqi;

    /**
     * 考试类型（考试、考查、报考）
     */
    @TableField("write_grade_type")
    private String writeGradeType;


}
