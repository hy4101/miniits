package com.miniits.commons.model;

import javax.persistence.Column;
import java.util.Date;

/**
 * Created by wq on 2016/11/28.
 */
public class WDiscuss {

    private long id;
    private long pid;
    private String blogId;
    private String userId;
    private String userName;
    private String discussText;
    private Date discussDate;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getPid() {
        return pid;
    }

    public void setPid(long pid) {
        this.pid = pid;
    }

    public String getBlogId() {
        return blogId;
    }

    public void setBlogId(String blogId) {
        this.blogId = blogId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getDiscussText() {
        return discussText;
    }

    public void setDiscussText(String discussText) {
        this.discussText = discussText;
    }

    public Date getDiscussDate() {
        return discussDate;
    }

    public void setDiscussDate(Date discussDate) {
        this.discussDate = discussDate;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
}
