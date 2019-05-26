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
public class RoleAnthorityInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "role_anthority_id", type = IdType.AUTO)
    private Integer roleAnthorityId;

    @TableField("role_id")
    private Integer roleId;

    @TableField("anthorty_id")
    private Integer anthortyId;


}
