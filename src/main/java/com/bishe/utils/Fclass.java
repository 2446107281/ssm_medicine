package com.bishe.utils;

import com.bishe.domain.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Fclass {
    public static  Medicine F_Medicine (HttpServletRequest request, HttpSession session) throws ParseException {
        Integer M_id =null;
        DateFormat fmt =new SimpleDateFormat("yyyy-MM-dd");
        if ("".equals(request.getParameter("M_id"))){
            String M_id_1="1";
            M_id = Integer.valueOf(M_id_1);
        }else{
            M_id = Integer.valueOf(request.getParameter("M_id"));
        }
        String M_name = request.getParameter("M_Name");
        Date M_date = fmt.parse(request.getParameter("M_date"));
        String M_manufacturer = request.getParameter("M_manufacturer");
        String M_classifiy = request.getParameter("M_classifiy");
        MClassClassify M_class = MClassClassify.valueOf(request.getParameter("M_class"));
        Float M_inprice = Float.valueOf(request.getParameter("M_inprice"));
        Float M_outprice = Float.valueOf(request.getParameter("M_outprice"));
        Integer M_in_much = Integer.valueOf(request.getParameter("M_in_much"));
        Integer M_out_much = Integer.valueOf(request.getParameter("M_out_much"));
        String M_explain = request.getParameter("M_explain");
        Date M_createtime = new Date();
        Integer M_create_account = (Integer) session.getAttribute("account_id");
        return new Medicine(M_id,M_name,M_date,M_manufacturer,M_classifiy,M_class,M_inprice,M_outprice,M_in_much,M_out_much,M_explain,M_createtime,M_create_account);
    }

    public static  Account F_Account (HttpServletRequest request) throws ParseException {
        Integer account_id;
        Integer account_gender=null;
        DateFormat fmt =new SimpleDateFormat("yyyy-MM-dd");
        if (!"".equals(request.getParameter("account_id"))){
            account_id = Integer.valueOf(request.getParameter("account_id"));
            String account_id_1="1";
        }else {
            account_id = Uuid.getUUIDInOrderId();
        }

        String account_username = request.getParameter("account_username");
        String account_password = request.getParameter("account_password");
        String account_name = request.getParameter("account_name");
        String account_tel = request.getParameter("account_tel");
        if ("男".equals(request.getParameter("account_gender"))){
            account_gender =1;
        }if("女".equals(request.getParameter("account_gender"))){
            account_gender =2;
        }else {
            System.out.println("gender error");
        }
        Date account_date = fmt.parse(request.getParameter("account_date"));
        String account_email = request.getParameter("account_email");

        return new Account(account_id, account_username, account_password, account_name, account_tel, account_gender, account_date, account_email);
    }
    public static Order F_Order(ShoppingCart shoppingCart){
        Order order = new Order();
        order.setO_id(Uuid.getUUIDInOrderId());
        order.setO_A_id(shoppingCart.getS_A_id());
        order.setO_M_id(shoppingCart.getS_M_id());
        order.setO_name(shoppingCart.getS_name());
        order.setO_manufacturer(shoppingCart.getS_manufacturer());
        order.setO_price(shoppingCart.getS_price());
        order.setO_much(shoppingCart.getS_much());
        order.setO_time(new Date());
        return order;
    }
    public static String M_classToString(String M_class) {
        String M_class_str;
        switch (M_class) {
//             XinXueGuanKe,XiaoHuaXiTong,RiChangYongYao,PiFuKeYao,GanDanYiLei,HuXiKeLei,FengShiguanjie,YiLiaoQiCai,QiTa
            case "XinXueGuanKe": M_class_str = "心血管科药品";
                break;
            case "XiaoHuaXiTong": M_class_str = "消化系统药品";
                break;
            case "RiChangYongYao": M_class_str = "日常用药";
                break;
            case "PiFuKeYao": M_class_str = "皮肤科用药";
                break;
            case "GanDanYiLei": M_class_str = "肝胆胰类";
                break;
            case "HuXiKeLei": M_class_str = "呼吸科类";
                break;
            case "FengShiguanjie": M_class_str = "风湿关节药品";
                break;
            case "YiLiaoQiCai": M_class_str = "医疗器材";
                break;
            case "QiTa": M_class_str = "其他";
                break;
            default:
                throw new IllegalStateException("Unexpected value: " + M_class);
        }
        return M_class_str;
    }
    public static ManuFacturer F_manufacturer(HttpServletRequest request) {
        ManuFacturer manuFacturer = new ManuFacturer();
        manuFacturer.setMF_name(request.getParameter("MF_name"));
        manuFacturer.setMF_address(request.getParameter("MF_address"));
        manuFacturer.setMF_person(request.getParameter("MF_person"));
        manuFacturer.setMF_phonenumber(request.getParameter("MF_phonenumber"));
        manuFacturer.setMF_email(request.getParameter("MF_email"));
        return manuFacturer;

    }

}
