package com.miniits.web.web.emailvalidate.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by wq on 2016/10/8.
 */

@Entity
@Table(name = "email_validate")
public class EMailValidate {

    private String id;
    private String userId;
    private String email;
    private int status=0;
    private String validateCode;
    private Date registerTime;
    private String sendMsg;

    @Id
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid",strategy = "uuid")
    @Column(name = "id",nullable = false)
    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }

    @Column(name = "user_id",nullable = false)
    public String getUserId() {
        return userId;
    }
    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Column(name = "email",nullable = false)
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name = "status",nullable = false)
    public int getStatus() {
        return status;
    }
    public void setStatus(int status) {
        this.status = status;
    }

    @Column(name = "validate_code",nullable = false)
    public String getValidateCode() {
        return validateCode;
    }
    public void setValidateCode(String validateCode) {
        this.validateCode = validateCode;
    }

    @Column(name = "register_time",nullable = false)
    public Date getRegisterTime() {
        return registerTime;
    }
    public void setRegisterTime(Date registerTime) {
        this.registerTime = registerTime;
    }

    @Column(name = "send_msg",nullable = false)
    public String getSendMsg() {
        return sendMsg;
    }
    public void setSendMsg(String sendMsg) {
        this.sendMsg = sendMsg;
    }
}

