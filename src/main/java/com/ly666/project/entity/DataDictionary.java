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
public class DataDictionary implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "data_id", type = IdType.AUTO)
    private Integer dataId;

    @TableField("data_content")
    private String dataContent;

    @TableField("data_type")
    private String dataType;

    @TableField("data_desc")
    private String dataDesc;


}
