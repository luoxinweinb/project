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
public class TrackRecordInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "track_record_id", type = IdType.AUTO)
    private Integer trackRecordId;

    @TableField("student_id")
    private Integer studentId;

    @TableField("track_record_title")
    private String trackRecordTitle;

    @TableField("track_record_content")
    private String trackRecordContent;

    @TableField("track_record_time")
    private LocalDateTime trackRecordTime;

    @TableField("enrollment")
    private Integer enrollment;

    @TableField("next_record_time")
    private LocalDateTime nextRecordTime;


}
