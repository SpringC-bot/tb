package cn.hfp.tb.pojo;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

/**
 * 文章类
 */
@Component
public class Article implements Serializable {
    private Integer id;
    private Integer aid;
    private String title;
    private String content;
    private Integer status;
    private Date createTime;
    private Date updateTime;
    private String summary; // 文章摘要
    private Integer tag;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAid() {
        return aid;
    }

    @Override
    public String toString() {
        return "Article{" +
                "id=" + id +
                ", aid=" + aid +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", status=" + status +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", summary='" + summary + '\'' +
                ", tag=" + tag +
                '}';
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public Integer getTag() {
        return tag;
    }

    public void setTag(Integer tag) {
        this.tag = tag;
    }

}
