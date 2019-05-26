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
public class StaffInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "staff_id", type = IdType.AUTO)
    private Integer staffId;

    @TableField("role_id")
    private Integer roleId;

    @TableField("staff_name")
    private String staffName;

    @TableField("staff_sex")
    private String staffSex;

    @TableField("staff_age")
    private Integer staffAge;

    @TableField("staff_native_place")
    private String staffNativePlace;

    @TableField("staff_idcard")
    private String staffIdcard;

    @TableField("staff_brithday")
    private LocalDateTime staffBrithday;

    @TableField("staff_office_phone")
    private String staffOfficePhone;

    @TableField("staff_mobile_phone")
    private String staffMobilePhone;

    @TableField("staff_eamil")
    private String staffEamil;

    @TableField("staff_addr")
    private String staffAddr;

    @TableField("staff_qq")
    private String staffQq;

    @TableField("staff_entry_time")
    private LocalDateTime staffEntryTime;

    @TableField("staff_eduction_level")
    private String staffEductionLevel;

    @TableField("staff_remark")
    private String staffRemark;

    /**
     * 1 有效 员工
            0 无效
            2 教师
            
     */
    @TableField("staff_state")
    private String staffState;

    @TableField("user_number")
    private String userNumber;

    @TableField("user_passowrd")
    private String userPassowrd;


}
