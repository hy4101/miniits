package com.miniits.web.user.type.model;

import javax.persistence.*;

/**
 * Created by wq on 2016/11/17.
 */

@Entity
@Table(name = "blog_type")
public class BlogType {

    private int id;
    private int pid;
    private String name;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id",unique = true,nullable = false)
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "pid",nullable = false)
    public int getPid() {
        return pid;
    }
    public void setPid(int pid) {
        this.pid = pid;
    }

    @Column(name = "name",nullable = false,length = 22)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
