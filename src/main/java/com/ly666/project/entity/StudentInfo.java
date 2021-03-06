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
public class StudentInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 学生编号
     */
    @TableId(value = "student_id", type = IdType.AUTO)
    private Integer studentId;

    /**
     * 员工编号
     */
    @TableField("staff_id")
    private Integer staffId;

    /**
     * 班级编号
     */
    @TableField("class_id")
    private Integer classId;

    @TableField("student_no")
    private String studentNo;

    @TableField("student_name")
    private String studentName;

    @TableField("student_sex")
    private String studentSex;

    /**
     * 曾用名
     */
    @TableField("student_name1")
    private String studentName1;

    @TableField("student_national")
    private String studentNational;

    @TableField("student_birthday")
    private String studentBirthday;

    @TableField("student_health")
    private String studentHealth;

    @TableField("student_native")
    private String studentNative;

    @TableField("student_indate")
    private String studentIndate;

    @TableField("student_marital")
    private String studentMarital;

    @TableField("student_address")
    private String studentAddress;

    @TableField("student_post")
    private String studentPost;

    @TableField("family_tellphone")
    private String familyTellphone;

    @TableField("student_tellphone")
    private String studentTellphone;

    @TableField("student_qq")
    private String studentQq;

    @TableField("student_isleague")
    private String studentIsleague;

    @TableField("student_join_time")
    private String studentJoinTime;

    @TableField("student_idcard")
    private String studentIdcard;

    @TableField("student_before_school")
    private String studentBeforeSchool;

    @TableField("student_hobby")
    private String studentHobby;

    @TableField("student_school")
    private String studentSchool;

    @TableField("student_pro")
    private String studentPro;

    @TableField("student_edu_sys")
    private String studentEduSys;

    @TableField("student_pro_city")
    private String studentProCity;

    @TableField("student_type")
    private String studentType;

    @TableField("student_ispay")
    private String studentIspay;

    @TableField("student_desc")
    private String studentDesc;

    @TableField("student_number")
    private String studentNumber;

    @TableField("student_password")
    private String studentPassword;

    @TableField("student_mark")
    private Integer studentMark;

    @TableField("student_state")
    private String studentState;

    @TableField("student_hard")
    private String studentHard;

    @TableField("student_loan")
    private String studentLoan;

    @TableField("student_muster")
    private String studentMuster;

    @TableField("student_project")
    private Double studentProject;


}
