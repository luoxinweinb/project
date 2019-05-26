package com.ly666.project.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
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
public class DisciplineInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "discipline_id", type = IdType.AUTO)
    private Integer disciplineId;

    @TableField("discipline_no")
    private String disciplineNo;

    @TableField("discipline_name")
    private String disciplineName;

    /**
     * 学分
     */
    @TableField("discipline_tuition")
    private Double disciplineTuition;

    @TableField("discipline_bring")
    private Integer disciplineBring;

    @TableField("discipline_type")
    private String disciplineType;

    @TableField("discipline_desc")
    private String disciplineDesc;

    @TableField("discipline_isuesd")
    private String disciplineIsuesd;


}
