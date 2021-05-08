package cn.hfp.tb.pojo;

import java.io.Serializable;
import java.util.Date;

/**
 * 评论类
 */
public class UserComment implements Serializable {
    private Integer id;
    private Integer articleId;
    private Integer userId;
    private String content;
    private Date time;

    @Override
    public String toString() {
        return "UserComment{" +
                "id=" + id +
                ", articleId=" + articleId +
                ", userId=" + userId +
                ", content='" + content + '\'' +
                ", time=" + time +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
