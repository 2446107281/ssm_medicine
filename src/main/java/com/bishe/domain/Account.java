package com.bishe.domain;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * 账户
 */
public class Account implements Serializable {
    /**
     * 用户的id
     */
    private Integer id;
    /**
     * 用户的用于登录的用户名
     */
    private String username;
    /**
     * 用户的密码
     */
    private String password;
    /**
     * 用户的真实姓名/昵称
     */
    private String name;
    /**
     * 用户的tel
     */
    private String tel;
    /**
     * 用户的性别:1代表男,0代表女
     */
    private Integer gender;
    /**
     * 用户的出生日期
     */
    private Date date;
    /**
     * 用户的email
     */
    private String email;

    /**
     * 账户的权限:分为三类
     * 1:admin 超级用户:可以添加用户和管理员
     * 2:管理员:可以看到后台的数据,并记录等
     * 3.用户:只能添加用户,看见能看见的东西
     */
    private Integer account_status;


    public Account() {
    }

    public Account(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public Account(Integer id, String username, String password, String name, String tel, Integer gender, Date date, String email) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.name = name;
        this.tel = tel;
        this.gender = gender;
        this.date = date;
        this.email = email;
    }

    @Override
    public String toString() {
        return "Account{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", tel='" + tel + '\'' +
                ", gender=" + gender +
                ", date=" + date +
                ", email='" + email + '\'' +
                ", account_status=" + account_status +
                '}';
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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Integer getGender() {
        return gender;
    }

    public void setGender(Integer gender) {
        this.gender = gender;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getAccount_status() {
        return account_status;
    }

    public void setAccount_status(Integer account_status) {
        this.account_status = account_status;
    }
}
