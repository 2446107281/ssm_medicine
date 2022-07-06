package com.bishe.controller;


import com.bishe.domain.ManuFacturer;
import com.bishe.domain.Order;
import com.bishe.service.Impl.ManuFacturerServiceImpl;
import com.bishe.service.Impl.OrderServiceImpl;
import com.bishe.utils.Fclass;
import com.bishe.utils.Uuid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.util.List;

/**
 * 账户的控制器
 */
@Controller
@RequestMapping("/manufacturer")
public class ManuFactureController {

    @Autowired
    private ManuFacturerServiceImpl manufacturerServiceImpl;

    @RequestMapping("/manufacturerlook")
    private String manufacturerdetail(HttpServletRequest request, Integer MF_id){
        System.out.println("MF_id"+MF_id);
        assert MF_id != null:"MF_id为空";
        ManuFacturer oneById = manufacturerServiceImpl.findOneById(MF_id);
        assert oneById != null:"返回的oneid为空";
        request.setAttribute("manufacturer",oneById);
        System.out.println("manufacture:"+oneById);
        return "manufacturer_look";
    }
    @RequestMapping("/manufacturerlookall")
    private String manufacturerlookall(HttpServletRequest request){
        List<ManuFacturer> allManuFacturer = manufacturerServiceImpl.findAllManuFacturer();
        request.setAttribute("manufacturers",allManuFacturer);
        return "manufacturerlookall";
    }
    @RequestMapping("/manufacturerfindby")
    private String manufacturerfindby(HttpServletRequest request){
        String MF_name = request.getParameter("MF_name");
        String MF_person = request.getParameter("MF_person");
        String MF_phonenumber = request.getParameter("MF_phonenumber");
        List<ManuFacturer> allManuFacturer = manufacturerServiceImpl.findBy(MF_name,MF_person,MF_phonenumber);
        request.setAttribute("MF_name",MF_name);
        request.setAttribute("MF_person",MF_person);
        request.setAttribute("MF_phonenumber",MF_phonenumber);
        request.setAttribute("manufacturers",allManuFacturer);
        return "manufacturerlookall";
    }
    @RequestMapping("/manufacturerdelete")
    private String manufacturerdelete(HttpServletRequest request,Integer id){
        manufacturerServiceImpl.deleteManuFacturer(id);
        return "redirect:/manufacturer/manufacturerlookall";
    }
    @RequestMapping("/ManuFacturerEdit_action")
    private String ManuFacturerEdit_action(HttpServletRequest request){
        ManuFacturer manuFacturer = Fclass.F_manufacturer(request);
        manuFacturer.setMF_id(Integer.valueOf(request.getParameter("MF_id")));
        manufacturerServiceImpl.updateManuFacturer(manuFacturer);
        return "redirect:/manufacturer/manufacturerlookall";
    }
    @RequestMapping("/ManuFacturerAdd_action")
    private String ManuFacturerAdd_action(HttpServletRequest request){
        ManuFacturer manuFacturer = Fclass.F_manufacturer(request);
        manuFacturer.setMF_id(Uuid.getUUIDInOrderId());
        manufacturerServiceImpl.saveManuFacturer(manuFacturer);
        return "redirect:/manufacturer/manufacturerlookall";
    }
    @RequestMapping("/manufactureradd")
    private String manufactureradd(){
        return "manufacturer_add";
    }

}
