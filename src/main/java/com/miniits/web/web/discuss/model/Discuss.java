package com.miniits.web.web.discuss.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by wq on 2016/11/27.
 */


@Entity
@Table(name = "discuss")
public class Discuss {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id",nullable = false,unique = true)
    private long id;

    @Column(name = "pid",nullable = false)
    private long pid;

    @Column(name = "blog_id",nullable = false,length = 39)
    private String blogId;

    @Column(name = "user_id",nullable = false,length = 39)
    private String userId;

    @Column(name = "discuss_text",nullable = false,length = 65000)
    private String discussText;

    @Column(name = "discuss_date")
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
}
