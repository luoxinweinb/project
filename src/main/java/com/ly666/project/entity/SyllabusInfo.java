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
public class SyllabusInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "syllabus_id", type = IdType.AUTO)
    private Integer syllabusId;

    @TableField("syllabus_yi")
    private String syllabusYi;

    @TableField("syllabus_er")
    private String syllabusEr;

    @TableField("syllabus_san")
    private String syllabusSan;

    @TableField("syllabus_si")
    private String syllabusSi;

    @TableField("syllabus_wu")
    private String syllabusWu;

    @TableField("syllabus_liu")
    private String syllabusLiu;

    @TableField("syllabus_qi")
    private String syllabusQi;

    @TableField("is_uesd")
    private String isUesd;

    @TableField("syllabus_name")
    private String syllabusName;


}
