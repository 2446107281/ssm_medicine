package com.bishe.controller;

/**
 * @author Lxh
 * @date 2022/4/26 18:15
 */


import com.bishe.domain.ManuFacturer;
import com.bishe.domain.Medicine;
import com.bishe.domain.Order;
import com.bishe.service.Impl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * 订单的控制器
 */
@Controller
@RequestMapping("/order")
public class OrderController {



    @Autowired
    private MedicineServiceImpl medicineServiceImpl;
    @Autowired
    private ManuFacturerServiceImpl manuFacturerServiceImpl;

    @Autowired
    private OrderServiceImpl orderServiceImpl;
    @RequestMapping("/order")
    public String order(HttpServletRequest request, Integer id) {
        System.out.println("order页面...id="+id);
        List<Order> orders = orderServiceImpl.selectorderByUserId(id);
        request.setAttribute("orders",orders);
        System.out.println("orders:"+orders);

        //        完成药品厂家的字符的显示
        List<String> medicineManufacturersStr = new ArrayList<String>();
        List<Medicine> medicinelist = medicineServiceImpl.selectMedicineAll();
        for ( Medicine medicine:medicinelist
        ) {
            Integer str = Integer.valueOf(medicine.getM_manufacturer());
            System.out.println("str"+str);
            ManuFacturer oneById = manuFacturerServiceImpl.findOneById(Integer.valueOf(medicine.getM_manufacturer()));
            System.out.println("oneById:"+oneById);
            System.out.println("oneById.getMF_name():"+oneById.getMF_name());
            medicineManufacturersStr.add(oneById.getMF_name());

            System.out.println("medicineManufacturersStr:"+medicineManufacturersStr);
        }
        request.setAttribute("Medicine_manufacturers_str",medicineManufacturersStr);

        return "order";
    }
    @RequestMapping("/order_houtai")
    public String order_houtai(HttpServletRequest request) {
        System.out.println("order_houtai页面...");
        List<Order> orders = orderServiceImpl.selectorderAll();
        request.setAttribute("orders",orders);
        System.out.println("orders:"+orders);
        return "order_houtai";
    }
    @RequestMapping("/order_detail")
    public String order_detail(HttpServletRequest request,Integer id) {
        System.out.println("order_detail页面...id="+id);
        Order order = orderServiceImpl.selectorderById(id);
        Medicine medicine = medicineServiceImpl.selectMedicineById(order.getO_M_id());
        request.setAttribute("medicine",medicine);
        request.setAttribute("order",order);
        System.out.println("order:"+order);
        System.out.println("medicine:"+medicine);
        return "order_detail";
    }
}
