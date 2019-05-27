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
 * 权限信息表
 * </p>
 *
 * @author luoyi
 * @since 2019-05-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class AnthortyInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "anthorty_id", type = IdType.AUTO)
    private Integer anthortyId;//权限编号

    @TableField("anthorty_pid")
    private Integer anthortyPid;//权限菜单编号

    @TableField("anthorty_name")
    private String anthortyName;//权限名称

    @TableField("anthorty_desc")
    private String anthortyDesc;//权限描述

    @TableField("anthorty_url")
    private String anthortyUrl;//权限URL
}
