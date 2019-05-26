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
public class ClassInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "class_id", type = IdType.AUTO)
    private Integer classId;

    @TableField("syllabus_id")
    private Integer syllabusId;

    @TableField("classroom_id")
    private Integer classroomId;

    @TableField("staff_id")
    private Integer staffId;

    @TableField("class_name")
    private String className;

    @TableField("class_number")
    private Integer classNumber;

    @TableField("class_start_time")
    private LocalDateTime classStartTime;

    @TableField("class_end_time")
    private LocalDateTime classEndTime;

    @TableField("class_isuesd")
    private String classIsuesd;

    @TableField("class_state")
    private String classState;

    @TableField("class_desc")
    private String classDesc;

    @TableField("class_major")
    private String classMajor;


}
