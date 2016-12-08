package com.miniits.web.web.collect_blog.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by wq on 2016/12/8.
 */

@Entity
@Table(name = "collect_blog")
public class CollectBlog {

    private String id;
    private String userId;
    private String blogId;
    private Date collectTime;


    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid",strategy = "uuid")
    @Column(name = "id",nullable = false,unique = true,length = 32)
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }

    @Column(name = "user_id",nullable = false,length = 32)
    public String getUserId() {
        return userId;
    }
    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Column(name = "blog_id",nullable = false,length = 32)
    public String getBlogId() {
        return blogId;
    }
    public void setBlogId(String blogId) {
        this.blogId = blogId;
    }

    @Column(name = "collect_time",nullable = false)
    public Date getCollectTime() {
        return collectTime;
    }
    public void setCollectTime(Date collectTime) {
        this.collectTime = collectTime;
    }
}
