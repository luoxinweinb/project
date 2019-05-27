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
 * 公告信息表
 * </p>
 *
 * @author luoyi
 * @since 2019-05-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
public class NoticeInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "notice_id", type = IdType.AUTO)
    private Integer noticeId;//公告编号

    @TableField("staff_id")
    private Integer staffId;//员工编号

    @TableField("notice_title")
    private String noticeTitle;//公告标题

    @TableField("notice_content")
    private String noticeContent;//公告内容

    @TableField("notice_time")
    private LocalDateTime noticeTime;//发布时间

    @TableField("notice_filename")
    private String noticeFilename;


}
