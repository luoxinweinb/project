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
public class TemplateInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "template_id", type = IdType.AUTO)
    private Integer templateId;

    @TableField("template_title")
    private String templateTitle;

    @TableField("template_content")
    private String templateContent;

    @TableField("template_type")
    private String templateType;


}
