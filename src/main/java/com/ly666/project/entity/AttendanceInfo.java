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
public class AttendanceInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "attendance_id", type = IdType.AUTO)
    private Integer attendanceId;

    @TableField("student_id")
    private Integer studentId;

    @TableField("staff_id")
    private Integer staffId;

    @TableField("attendance_desc")
    private String attendanceDesc;

    @TableField("attendance_state")
    private String attendanceState;

    @TableField("attendance_time")
    private LocalDateTime attendanceTime;

    @TableField("attendance_remark")
    private String attendanceRemark;

    @TableField("attendance_xuenian")
    private String attendanceXuenian;

    @TableField("attendance_xueqi")
    private String attendanceXueqi;

    @TableField("attendance_month")
    private String attendanceMonth;


}
