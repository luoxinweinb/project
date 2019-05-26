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
public class ClassroomInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "classroom_id", type = IdType.AUTO)
    private Integer classroomId;

    @TableField("classroom_name")
    private String classroomName;

    @TableField("classroom_max")
    private Integer classroomMax;

    @TableField("classroom_info")
    private String classroomInfo;

    @TableField("classroom_remark")
    private String classroomRemark;

    @TableField("classroom_mark")
    private String classroomMark;


}
