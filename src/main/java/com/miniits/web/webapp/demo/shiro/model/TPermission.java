package com.miniits.web.webapp.demo.shiro.model;

import javax.persistence.*;

/**
 * Created by wq on 2016/10/15.
 */

@Entity
@Table(name = "t_permission")
public class TPermission {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String permissionname;

    @ManyToOne
    @JoinColumn(name = "role_id")
    private TRole role;// 一个权限对应一个角色

    // 省略 get set


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPermissionname() {
        return permissionname;
    }

    public void setPermissionname(String permissionname) {
        this.permissionname = permissionname;
    }

    public TRole getRole() {
        return role;
    }

    public void setRole(TRole role) {
        this.role = role;
    }
}
