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
public class CommunicateInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 编号
     */
    @TableId(value = "communicate_id", type = IdType.AUTO)
    private Integer communicateId;

    @TableField("student_id")
    private Integer studentId;

    @TableField("staff_id")
    private Integer staffId;

    /**
     * 评价时间
     */
    @TableField("communicate_time")
    private LocalDateTime communicateTime;

    /**
     * 评价内容
     */
    @TableField("communicate_content")
    private String communicateContent;

    @TableField("communicate_xuenian")
    private String communicateXuenian;

    @TableField("communicate_xueqi")
    private String communicateXueqi;

    /**
     * 病事假统计
     */
    @TableField("leave_count")
    private Integer leaveCount;

    /**
     * 旷课统计
     */
    @TableField("truancy_count")
    private Integer truancyCount;

    /**
     * 奖惩记载
     */
    @TableField("reward_punish")
    private String rewardPunish;


}
