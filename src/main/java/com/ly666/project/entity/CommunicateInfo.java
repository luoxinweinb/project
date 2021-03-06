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
 * 班主任对学生的评价表
 * </p>
 *
 * @author luoyi
 * @since 2019-05-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class CommunicateInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 编号
     */
    @TableId(value = "communicate_id", type = IdType.AUTO)
    private Integer communicateId;//编号

    @TableField("student_id")
    private Integer studentId;//学生编号

    @TableField("staff_id")
    private Integer staffId;//员工编号

    /**
     * 评价时间
     */
    @TableField("communicate_time")
    private LocalDateTime communicateTime;//评价时间

    /**
     * 评价内容
     */
    @TableField("communicate_content")
    private String communicateContent;//品行评语

    @TableField("communicate_xuenian")
    private String communicateXuenian;//学年

    @TableField("communicate_xueqi")
    private String communicateXueqi;//学期

    /**
     * 病事假统计
     */
    @TableField("leave_count")
    private Integer leaveCount;//病事假统计

    /**
     * 旷课统计
     */
    @TableField("truancy_count")
    private Integer truancyCount;//旷课统计

    /**
     * 奖惩记载
     */
    @TableField("reward_punish")
    private String rewardPunish;//奖惩记载


}
