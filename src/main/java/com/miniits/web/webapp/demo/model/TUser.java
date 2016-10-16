package com.miniits.web.webapp.demo.model;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by wq on 2016/10/15.
 */

@Entity
@Table(name = "t_user")
public class TUser {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @NotEmpty(message = "用户名不能为空")
    private String username;
    @NotEmpty(message = "密码不能为空")
    private String password;
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "t_user_role", joinColumns = {@JoinColumn(name = "user_id")}, inverseJoinColumns = {
            @JoinColumn(name = "role_id")})
    private List<TRole> roleList;// 一个用户具有多个角色

    public TUser() {
        super();
    }

    public TUser(String username, String password) {
        super();
        this.username = username;
        this.password = password;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<TRole> getRoleList() {
        return roleList;
    }

    public void setRoleList(List<TRole> roleList) {
        this.roleList = roleList;
    }

    @Transient
    public Set<String> getRolesName() {
        List<TRole> roles = getRoleList();
        Set<String> set = new HashSet<String>();
        for (TRole role : roles) {
            set.add(role.getRolename());
        }
        return set;
    }

}
