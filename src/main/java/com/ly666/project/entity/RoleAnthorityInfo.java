package com.ly666.project.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * <p>
 * 角色权限信息表
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
    private Integer roleAnthorityId;//编号

    @TableField("role_id")
    private Integer roleId;//角色编号

    @TableField("anthorty_id")
    private Integer anthortyId;//权限编号


}
