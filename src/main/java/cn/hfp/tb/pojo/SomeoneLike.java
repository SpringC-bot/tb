package cn.hfp.tb.pojo;

import org.springframework.stereotype.Component;

import java.io.Serializable;
import java.util.Date;

/**
 * 点赞类
 */
@Component
public class SomeoneLike implements Serializable {
    private Integer id;
    private Integer articleId;
    private Integer userId;
    private Integer commentId;
    private Integer isLike;
    private Date operationTime;

    public Integer getId() {
        return id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
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

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Integer getIsLike() {
        return isLike;
    }

    public void setIsLike(Integer isLike) {
        this.isLike = isLike;
    }

    public Date getOperationTime() {
        return operationTime;
    }

    public void setOperationTime(Date operationTime) {
        this.operationTime = operationTime;
    }

    @Override
    public String toString() {
        return "SomeoneLike{" +
                "id=" + id +
                ", articleId=" + articleId +
                ", userId=" + userId +
                ", commentId=" + commentId +
                ", isLike=" + isLike +
                ", operationTime=" + operationTime +
                '}';
    }
}
