package com.miniits.web.webapp.demo.shiro.model;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wq on 2016/10/15.
 */

@Entity
@Table(name = "t_role")
public class TRole {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String rolename;
    @OneToMany(mappedBy = "role", fetch=FetchType.EAGER)
    private List<TPermission> permissionList;// 一个角色对应多个权限
    @ManyToMany
    @JoinTable(name = "t_user_role", joinColumns = { @JoinColumn(name = "role_id") }, inverseJoinColumns = {
            @JoinColumn(name = "user_id") })
    private List<TUser> userList;// 一个角色对应多个用户


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename;
    }

    public List<TPermission> getPermissionList() {
        return permissionList;
    }

    public void setPermissionList(List<TPermission> permissionList) {
        this.permissionList = permissionList;
    }

    public List<TUser> getUserList() {
        return userList;
    }

    public void setUserList(List<TUser> userList) {
        this.userList = userList;
    }

    @Transient
    public List<String> getPermissionsName() {
        List<String> list = new ArrayList<String>();
        List<TPermission> perlist = getPermissionList();
        for (TPermission per : perlist) {
            list.add(per.getPermissionname());
        }
        return list;
    }
}
