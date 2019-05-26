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
public class MessafeInfo implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "messafe_id", type = IdType.AUTO)
    private Integer messafeId;

    @TableField("staff_id")
    private Integer staffId;

    @TableField("messafe_content")
    private String messafeContent;

    @TableField("messafe_man")
    private String messafeMan;

    @TableField("messafe_phone")
    private String messafePhone;

    @TableField("messafe_time")
    private LocalDateTime messafeTime;

    @TableField("messafe_state")
    private String messafeState;


}
