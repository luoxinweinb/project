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
public class AuditionInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "audition_id", type = IdType.AUTO)
    private Integer auditionId;

    @TableField("student_id")
    private Integer studentId;

    @TableField("audition_time")
    private LocalDateTime auditionTime;

    @TableField("audition_addr")
    private String auditionAddr;

    @TableField("audition_course")
    private String auditionCourse;

    @TableField("audition_desc")
    private String auditionDesc;


}
