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
public class MarketActive implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "active_id", type = IdType.AUTO)
    private Integer activeId;

    @TableField("staff_id")
    private Integer staffId;

    @TableField("active_name")
    private String activeName;

    @TableField("active_state")
    private Integer activeState;

    @TableField("active_start")
    private LocalDateTime activeStart;

    @TableField("active_end")
    private LocalDateTime activeEnd;

    @TableField("active_type")
    private Integer activeType;

    @TableField("active_coste_emtimate")
    private Double activeCosteEmtimate;

    @TableField("active_coste")
    private Double activeCoste;

    @TableField("active_refect_estimate")
    private Integer activeRefectEstimate;

    @TableField("active_student")
    private String activeStudent;

    @TableField("active_content")
    private String activeContent;


}
