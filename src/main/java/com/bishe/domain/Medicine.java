package com.bishe.domain;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 药品的详细信息
 */
public class Medicine implements Serializable {
    /**
     * 药品的唯一id
     */
    private Integer M_id;
    /**
     * 药品的名字
     */
    private String M_name;
    /**
     * 药品的生产日趋
     */
    private Date M_date;
    /**
     * 药品的生产日期的str
     */
    private String M_date_str;

    /**
     * 药品的生产的厂家
     */
    private String M_manufacturer;
    /**
     * 药品的分类:是处方药或者不是处方药
     */
    private String M_classifiy;

    /**
     * 药品的进价
     */
    private Float M_inprice;
    /**
     * 药品的售价
     */
    private Float M_outprice;
    /**
     * 药品的进量
     */
    private Integer M_in_much;
    /**
     * 药品的销量
     */
    private Integer M_out_much;
    /**
     * 药品的具体分类:M_class
     */
    private MClassClassify M_class;
    /**
     * 商品的详细说明.未完成
     */
    private String M_explain;
    /**
     * 药品的创建时间
     */
    private Date M_createtime;
    /**
     * 药品的创建的操作的账户
     */
    private Integer M_create_account;



    public Medicine() {
    }


    public Medicine(Integer m_id, String m_name, Date m_date, String m_manufacturer, String m_classifiy, MClassClassify m_class, Float m_inprice, Float m_outprice, Integer m_in_much, Integer m_out_much, String m_explain, Date m_createtime, Integer m_create_account) {
        M_id = m_id;
        M_name = m_name;
        M_date = m_date;
        M_manufacturer = m_manufacturer;
        M_classifiy = m_classifiy;
        M_inprice = m_inprice;
        M_outprice = m_outprice;
        M_in_much = m_in_much;
        M_out_much = m_out_much;
        M_class = m_class;
        M_explain = m_explain;
        M_createtime = m_createtime;
        M_create_account = m_create_account;
    }


    public Integer getM_id() {
        return M_id;
    }

    public void setM_id(Integer m_id) {
        M_id = m_id;
    }

    public String getM_name() {
        return M_name;
    }

    public void setM_name(String m_name) {
        M_name = m_name;
    }

    public Date getM_date() {
        return M_date;
    }

    public void setM_date(Date m_date) {
        M_date = m_date;
    }

    public String getM_date_str() {
        SimpleDateFormat f = new SimpleDateFormat("yyyy-mm-dd");
        M_date_str = f.format(M_date);
        System.out.println(M_date_str);
        return M_date_str;
    }

    public void setM_date_str(String m_date_str) {
        M_date_str = m_date_str;
    }

    public String getM_manufacturer() {
        return M_manufacturer;
    }

    public void setM_manufacturer(String m_manufacturer) {
        M_manufacturer = m_manufacturer;
    }

    public String getM_classifiy() {
        return M_classifiy;
    }

    public void setM_classifiy(String m_classifiy) {
        M_classifiy = m_classifiy;
    }

    public Float getM_inprice() {
        return M_inprice;
    }

    public void setM_inprice(Float m_inprice) {
        M_inprice = m_inprice;
    }

    public Float getM_outprice() {
        return M_outprice;
    }

    public void setM_outprice(Float m_outprice) {
        M_outprice = m_outprice;
    }

    public Integer getM_in_much() {
        return M_in_much;
    }

    public void setM_in_much(Integer m_in_much) {
        M_in_much = m_in_much;
    }

    public Integer getM_out_much() {
        return M_out_much;
    }

    public void setM_out_much(Integer m_out_much) {
        M_out_much = m_out_much;
    }

    public MClassClassify getM_class() {
        return M_class;
    }

    public void setM_class(MClassClassify m_class) {
        M_class = m_class;
    }
    public String getM_explain() {
        return M_explain;
    }

    public void setM_explain(String m_explain) {
        M_explain = m_explain;
    }

    public Date getM_createtime() {
        return M_createtime;
    }

    public void setM_createtime(Date m_createtime) {
        M_createtime = m_createtime;
    }

    public Integer getM_create_account() {
        return M_create_account;
    }

    public void setM_create_account(Integer m_create_account) {
        M_create_account = m_create_account;
    }

    @Override
    public String toString() {
        return "Medicine{" +
                "M_id=" + M_id +
                ", M_name='" + M_name + '\'' +
                ", M_date=" + M_date +
                ", M_date_str='" + M_date_str + '\'' +
                ", M_manufacturer='" + M_manufacturer + '\'' +
                ", M_classifiy='" + M_classifiy + '\'' +
                ", M_inprice=" + M_inprice +
                ", M_outprice=" + M_outprice +
                ", M_in_much=" + M_in_much +
                ", M_out_much=" + M_out_much +
                ", M_class=" + M_class +
                ", M_explain='" + M_explain + '\'' +
                ", M_createtime=" + M_createtime +
                ", M_create_account=" + M_create_account +
                '}';
    }



}
