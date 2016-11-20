package com.miniits.web.web.demo.shiro.model;

import javax.persistence.*;

/**
 * Created by wq on 2016/10/16.
 */

@Entity
@Table(name = "t_user_role")
public class TUserRole {

    private String id;
    private int userId;
    private int roleId;

    @Id
    @Column(name = "id")
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }

    @Column(name = "user_id")
    public int getUserId() {
        return userId;
    }
    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Column(name = "role_id")
    public int getRoleId() {
        return roleId;
    }
    public void setRoleId(int roleId) {
        this.roleId = roleId;
    }
}
