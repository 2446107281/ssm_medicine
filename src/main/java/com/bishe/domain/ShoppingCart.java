package com.bishe.domain;

/**
 * @author Lxh
 * @date 2022/4/11 19:25
 */

import java.io.Serializable;

/**
 * 购物车类
 */
public class ShoppingCart  implements Serializable {
    private Integer S_id;
    private Integer S_A_id;
    private Integer S_M_id;
    private String S_name;
    /**
     * 购物车内药品的厂家
     */
    private String S_manufacturer;
    private Float S_price;
    private Integer S_much;
    private Float S_all_price;

    @Override
    public String toString() {
        return "ShoppingCart{" +
                "S_id=" + S_id +
                ", S_A_id=" + S_A_id +
                ", S_M_id=" + S_M_id +
                ", S_name='" + S_name + '\'' +
                ", S_manufacturer='" + S_manufacturer + '\'' +
                ", S_price=" + S_price +
                ", S_much=" + S_much +
                ", S_all_price=" + S_all_price +
                '}';
    }

    public Integer getS_id() {
        return S_id;
    }

    public void setS_id(Integer s_id) {
        S_id = s_id;
    }

    public Integer getS_A_id() {
        return S_A_id;
    }

    public void setS_A_id(Integer s_A_id) {
        S_A_id = s_A_id;
    }

    public Integer getS_M_id() {
        return S_M_id;
    }

    public void setS_M_id(Integer s_M_id) {
        S_M_id = s_M_id;
    }

    public String getS_name() {
        return S_name;
    }

    public void setS_name(String s_name) {
        S_name = s_name;
    }

    public String getS_manufacturer() {
        return S_manufacturer;
    }

    public void setS_manufacturer(String s_manufacturer) {
        S_manufacturer = s_manufacturer;
    }

    public Float getS_price() {
        return S_price;
    }

    public void setS_price(Float s_price) {
        S_price = s_price;
    }

    public Integer getS_much() {
        return S_much;
    }

    public void setS_much(Integer s_much) {
        S_much = s_much;
    }

    public Float getS_all_price() {
        return S_all_price;
    }

    public void setS_all_price(Float s_all_price) {
        S_all_price = s_all_price;
    }
}
