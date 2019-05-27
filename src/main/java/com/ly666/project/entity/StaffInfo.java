package com.ly666.project.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * <p>
 * 员工信息表
 * </p>
 *
 * @author luoyi
 * @since 2019-05-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class StaffInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "staff_id", type = IdType.AUTO)
    private Integer staffId;//员工编号

    @TableField("role_id")
    private Integer roleId;//角色编号

    @TableField("staff_name")
    private String staffName;//员工姓名

    @TableField("staff_sex")
    private String staffSex;//员工性别

    @TableField("staff_age")
    private Integer staffAge;//员工年龄

    @TableField("staff_native_place")
    private String staffNativePlace;//籍贯

    @TableField("staff_idcard")
    private String staffIdcard;//身份证号

    @TableField("staff_brithday")
    private LocalDateTime staffBrithday;//出生日期

    @TableField("staff_office_phone")
    private String staffOfficePhone;//办公电话

    @TableField("staff_mobile_phone")
    private String staffMobilePhone;//移动电话

    @TableField("staff_eamil")
    private String staffEamil;//Email邮箱

    @TableField("staff_addr")
    private String staffAddr;//地址

    @TableField("staff_qq")
    private String staffQq;//QQ号

    @TableField("staff_entry_time")
    private LocalDateTime staffEntryTime;//入职时间

    @TableField("staff_eduction_level")
    private String staffEductionLevel;//学历

    @TableField("staff_remark")
    private String staffRemark;//标注

    /**
     * 1 有效 员工
            0 无效
            2 教师
     */
    @TableField("staff_state")
    private String staffState;//员工类型

    @TableField("user_number")
    private String userNumber;//用户名

    @TableField("user_passowrd")
    private String userPassowrd;//密码

}
