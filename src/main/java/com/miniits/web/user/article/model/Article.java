package com.miniits.web.user.article.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by wq on 2016/10/20.
 */

@Entity
@Table(name = "article")
public class Article {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid",strategy = "uuid")
    @Column(name = "id",nullable = false,unique = true,length = 39)
    private String id;

    @Column(name = "user_id",nullable = false,length = 39)
    private String userId;

    @Column(name = "name",nullable = true,length = 50)
    private String name;

    @Column(name = "text",nullable = true,length = 65000)
    private String text;

    @Column(name = "time",nullable = true)
    private Date time;

    @Column(name = "type",nullable = true)
    private int type;

    @Column(name = "see",nullable = true)
    private int see;

    @Column(name = "revert",nullable = true)
    private int revert;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getSee() {
        return see;
    }

    public void setSee(int see) {
        this.see = see;
    }

    public int getRevert() {
        return revert;
    }

    public void setRevert(int revert) {
        this.revert = revert;
    }
}
