package com.miniits.web.web.user.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by wq on 2016/9/29.
 */

@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid",strategy = "uuid")
    @Column(name = "id",nullable = false,length = 35)
    private String id;

    @Column(name = "user_name",nullable = false,length = 20)
    private String userName;

    @Column(name = "password",nullable = false,length = 50)
    private String password;

    @Column(name = "e_mail",nullable = true,length = 32)
    private String eMail;

    @Column(name = "telephone",nullable = true,length = 11)
    private String telephone;

    @Column(name = "qq",nullable = true,length = 12)
    private String qq;

    @Column(name = "user_type",nullable = true,length = 5)
    private String userType;

    @Column(name = "signature",nullable = true,length = 50)
    private String signature;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String geteMail() {
        return eMail;
    }

    public void seteMail(String eMail) {
        this.eMail = eMail;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }
}
