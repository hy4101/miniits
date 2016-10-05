package com.miniits.web.webapp.image.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by wq on 2016/9/29.
 */

@Entity
@Table(name = "image")
public class Image {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid",strategy = "uuid")
    @Column(name = "id",nullable = false,length = 35)
    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
