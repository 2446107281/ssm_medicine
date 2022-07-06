package com.bishe.controller;

import com.bishe.domain.ManuFacturer;
import com.bishe.domain.Medicine;
import com.bishe.domain.ShoppingCart;
import com.bishe.service.Impl.*;
import com.bishe.utils.Fclass;
import com.bishe.utils.Uuid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Lxh
 * @date 2022/4/26 18:16
 */

/**
 * 购物车的控制器
 */
@Controller
@RequestMapping("/shoppingcart")
public class ShoppingCartController {


    @Autowired
    private MedicineServiceImpl medicineServiceImpl;
    @Autowired
    private ShoppingCartServiceImpl shoppingCartServiceImpl;
    @Autowired
    private OrderServiceImpl orderServiceImpl;
    @Autowired
    private ManuFacturerServiceImpl manuFacturerServiceImpl;

    @RequestMapping("/shopping_cart")
    public String shopping_cart(HttpServletRequest request, Integer S_A_id){
//        System.out.println("shopping_cart...");
//        System.out.println("A_id:"+S_A_id);
        List<ShoppingCart> shoppingCarts = shoppingCartServiceImpl.selectShoppingCartByAccount(S_A_id);
        request.setAttribute("ShoppingCarts",shoppingCarts);

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
//        System.out.println("页面的shoppingCarts:"+shoppingCarts);
//         href="/shoppingcart/shopping_cart?S_A_id=${sessionScope.account_id}"
        return "shopping_cart";
    }





    @RequestMapping("/addShoppingCart_action")
    public String addShoppingCart_action(HttpServletRequest request, ShoppingCart shoppingCart,String S_M_id,String S_A_id) {
        System.out.println("addShoppingCart_action...");
        System.out.println(shoppingCart);
        System.out.println("S_M_id"+S_M_id);
        System.out.println("S_A_id"+S_A_id);
        Medicine medicine = medicineServiceImpl.selectMedicineById(shoppingCart.getS_M_id());
        System.out.println(medicine);
        shoppingCart.setS_id(Uuid.getUUIDInOrderId());
        shoppingCart.setS_much(shoppingCart.getS_much());
        shoppingCart.setS_price(medicine.getM_outprice());
        shoppingCart.setS_name(medicine.getM_name());
        shoppingCart.setS_manufacturer(medicine.getM_manufacturer());
//      通过药品medicine判断是否在购物车中有此类药品,并且时不同用户的
        ShoppingCart shoppingCart_back = shoppingCartServiceImpl.isExistShoppingCart(shoppingCart.getS_A_id(),shoppingCart.getS_M_id());
        System.out.println("购物车中shoppingCart_back:"+shoppingCart_back);
        if (shoppingCart_back == null) {
            shoppingCart.setS_id(Uuid.getUUIDInOrderId());
            shoppingCartServiceImpl.addShoppingCart(shoppingCart);
            System.out.println("购物车中不存在,并添加了"+shoppingCart);
            return "redirect:/medicine/ReqMedDetails_action?M_class=XinXueGuanKe";
        }else {
            shoppingCartServiceImpl.editShoppingCart(shoppingCart);
            System.out.println("购物车中存在,并修改了"+shoppingCart);
            return "redirect:/medicine/ReqMedDetails_action?M_class=XinXueGuanKe";
        }
    }

    @RequestMapping("/jiesuan_action")
    public String jiesuan_action(Integer[] S_ids, HttpSession session)  {
        System.out.println("testAjax方法执行了...");
        System.out.println("jiesuan_action:"+S_ids);
        //根据订单创建订单
        for (Integer id : S_ids) {
            ShoppingCart shoppingCart = shoppingCartServiceImpl.selectShoppingCartById(id);
            Medicine medicine = medicineServiceImpl.selectMedicineById(shoppingCart.getS_M_id());
            if (medicine.getM_out_much()+shoppingCart.getS_much()<medicine.getM_in_much()){
                medicine.setM_out_much(medicine.getM_out_much()+shoppingCart.getS_much());
                medicineServiceImpl.editMeddicine(medicine);
                orderServiceImpl.addorder(Fclass.F_Order(shoppingCart));
                System.out.println("Fclass.F_Order(shoppingCart):"+Fclass.F_Order(shoppingCart));
                shoppingCartServiceImpl.deleteShoppingCartById(id);
            }else {
                System.out.println("库存不足,无法创建订单");
            }
        }
//        shoppingCartServiceImpl.deleteShoppingCartById(id);
        return "redirect:/shoppingcart/shopping_cart?S_A_id="+session.getAttribute("account_id");
//        完成用户显示界面
    }


    @RequestMapping("/deleteshoppingcart_action")
    public String deleteshoppingcart_action(HttpServletRequest request,Integer id,HttpSession session)  {
        System.out.println("deleteshoppingcart_action:"+id);
        shoppingCartServiceImpl.deleteShoppingCartById(id);
        return "redirect:/shoppingcart/shopping_cart?S_A_id="+session.getAttribute("account_id");
//        完成用户显示界面
    }

}
