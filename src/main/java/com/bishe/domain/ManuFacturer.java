package com.bishe.domain;

import java.io.Serializable;

/**
 * @author Lxh
 * @date 2022/4/2 20:58
 */
public class ManuFacturer  implements Serializable {
    //厂家id、厂家名字、厂家地址、厂家负责人、厂家电话、厂家邮箱、
    private Integer MF_id;
    private String MF_name;
    private String MF_address;
    private String MF_person;
    private String MF_phonenumber;
    private String MF_email;


    @Override
    public String toString() {
        return "ManuFacturer{" +
                "MF_id=" + MF_id +
                ", MF_name='" + MF_name + '\'' +
                ", MF_address='" + MF_address + '\'' +
                ", MF_person='" + MF_person + '\'' +
                ", MF_phonenumber='" + MF_phonenumber + '\'' +
                ", MF_email='" + MF_email + '\'' +
                '}';
    }

    public Integer getMF_id() {
        return MF_id;
    }

    public void setMF_id(Integer MF_id) {
        this.MF_id = MF_id;
    }

    public String getMF_name() {
        return MF_name;
    }

    public void setMF_name(String MF_name) {
        this.MF_name = MF_name;
    }

    public String getMF_address() {
        return MF_address;
    }

    public void setMF_address(String MF_address) {
        this.MF_address = MF_address;
    }

    public String getMF_person() {
        return MF_person;
    }

    public void setMF_person(String MF_person) {
        this.MF_person = MF_person;
    }

    public String getMF_phonenumber() {
        return MF_phonenumber;
    }

    public void setMF_phonenumber(String MF_phonenumber) {
        this.MF_phonenumber = MF_phonenumber;
    }

    public String getMF_email() {
        return MF_email;
    }

    public void setMF_email(String MF_email) {
        this.MF_email = MF_email;
    }
}
