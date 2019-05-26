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
public class NoticeInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "notice_id", type = IdType.AUTO)
    private Integer noticeId;

    @TableField("staff_id")
    private Integer staffId;

    @TableField("notice_title")
    private String noticeTitle;

    @TableField("notice_content")
    private String noticeContent;

    @TableField("notice_time")
    private LocalDateTime noticeTime;

    @TableField("notice_filename")
    private String noticeFilename;


}
