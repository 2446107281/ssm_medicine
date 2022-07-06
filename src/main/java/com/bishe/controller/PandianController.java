package com.bishe.controller;

/**
 * @author Lxh
 * @date 2022/4/26 18:15
 */


import com.bishe.domain.ManuFacturer;
import com.bishe.domain.Medicine;
import com.bishe.domain.Order;
import com.bishe.service.Impl.ManuFacturerServiceImpl;
import com.bishe.service.Impl.MedicineServiceImpl;
import com.bishe.service.Impl.OrderServiceImpl;
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
@RequestMapping("/pandian")
public class PandianController {



    @Autowired
    private MedicineServiceImpl medicineServiceImpl;
    @Autowired
    private ManuFacturerServiceImpl manuFacturerServiceImpl;

    @Autowired
    private OrderServiceImpl orderServiceImpl;
    @RequestMapping("/pandian")
    public String pandian(HttpServletRequest request, Integer id) {
        List<Medicine> medicines = medicineServiceImpl.selectMedicineAll();
        request.setAttribute("medicines",medicines);

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

        return "pandian";
    }

}
