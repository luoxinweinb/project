package com.ly666.project.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 学生成绩表
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
    private Integer writeGradeId;//编号

    @TableField("student_id")
    private Integer studentId;//学生编号

    @TableField("staff_id")
    private Integer staffId;//员工编号

    @TableField("class_id")
    private Integer classId;//班级编号

    @TableField("discipline_id")
    private Integer disciplineId;//课程编号

    @TableField("write_grade")
    private String writeGrade;//成绩

    @TableField("write_grade_time")
    private LocalDateTime writeGradeTime;//登分日期

    @TableField("write_grade_note")
    private String writeGradeNote;//备注

    @TableField("write_grade_xuenian")
    private String writeGradeXuenian;//学年

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
