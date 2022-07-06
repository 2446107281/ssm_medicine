package com.bishe.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * @author Lxh
 * @date 2022/4/19 18:15
 */
public class Order implements Serializable {
    private Integer O_id;
    private Integer O_A_id;
    private Integer O_M_id;
    private String O_name;
    private String O_manufacturer;
    private Float O_price;
    private Integer O_much;
    private Date O_time;


    @Override
    public String toString() {
        return "Order{" +
                "O_id=" + O_id +
                ", O_A_id=" + O_A_id +
                ", O_M_id=" + O_M_id +
                ", O_name='" + O_name + '\'' +
                ", O_manufacturer='" + O_manufacturer + '\'' +
                ", O_price=" + O_price +
                ", O_much=" + O_much +
                ", O_time=" + O_time +
                '}';
    }

    public Integer getO_id() {
        return O_id;
    }

    public void setO_id(Integer o_id) {
        O_id = o_id;
    }

    public Integer getO_A_id() {
        return O_A_id;
    }

    public void setO_A_id(Integer o_A_id) {
        O_A_id = o_A_id;
    }

    public Integer getO_M_id() {
        return O_M_id;
    }

    public void setO_M_id(Integer o_M_id) {
        O_M_id = o_M_id;
    }

    public String getO_name() {
        return O_name;
    }

    public void setO_name(String o_name) {
        O_name = o_name;
    }

    public String getO_manufacturer() {
        return O_manufacturer;
    }

    public void setO_manufacturer(String o_manufacturer) {
        O_manufacturer = o_manufacturer;
    }

    public Float getO_price() {
        return O_price;
    }

    public void setO_price(Float o_price) {
        O_price = o_price;
    }

    public Integer getO_much() {
        return O_much;
    }

    public void setO_much(Integer o_much) {
        O_much = o_much;
    }

    public Date getO_time() {
        return O_time;
    }

    public void setO_time(Date o_time) {
        O_time = o_time;
    }
}
