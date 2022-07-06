package com.bishe.controller;


import com.bishe.domain.*;
import com.bishe.service.Impl.AccountServiceImpl;
import com.bishe.service.Impl.OrderServiceImpl;
import com.bishe.service.Impl.ShoppingCartServiceImpl;
import com.bishe.service.Impl.MedicineServiceImpl;

import com.bishe.utils.Fclass;
import com.bishe.utils.Uuid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.util.List;
import java.util.Map;

/**
 * 账户的控制器
 */
@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private AccountServiceImpl accountServiceImpl;
    @Autowired
    private OrderServiceImpl orderServiceImpl;

    @RequestMapping("/findall")
    public String AccountfindAll(){
        System.out.println("AccountfindAll...");
        //如果在这成功调用service就是spring和springmvc整合成功
        accountServiceImpl.findAllAccount();
        return "login";
    }

    /**
     * 返回各种界面和各种界面的初始化
     * @return
     */
    @RequestMapping(path="/index")
    public String index(HttpSession session){
//         session.getAttribute("account_id");

        return "index_houtai";
    }
    @RequestMapping(path="/account")
    public String account(HttpSession session){
        Object id = session.getAttribute("account_id");

        return "redirect:/account/account_detail?id="+id;
    }
    @RequestMapping("/login")
    public String login(){
        System.out.println("login...");
        return "login";
    }
    @RequestMapping("/forgot-password")
    public String forgotPassword(){
        System.out.println("forgot-password...");
        return "forgot-password";
    }




    @RequestMapping("/register")
    public String register(){
        System.out.println("register...");
        return "register";
    }


    @RequestMapping("/account_edit")
    public String account_edit(HttpServletRequest request,Integer id) throws ParseException {
        Account account = accountServiceImpl.findOneById(id);
        request.setAttribute("account",account);
        System.out.println("account"+account);
        return "account_edit";
    }




    @RequestMapping("/contacts")
    public String contacts(HttpServletRequest request,Integer id) {
        System.out.println("contacts...");
        List<Account> accountList = accountServiceImpl.findAllAccount();
        request.setAttribute("accountList",accountList);
        System.out.println("accountList:"+accountList);
        return "account_look";
    }
    @RequestMapping("/account_look")
    public String account_look(HttpServletRequest request) {
        System.out.println("account_look...");
        List<Account> accountList = accountServiceImpl.findAllAccount();
        request.setAttribute("accountList",accountList);
        System.out.println("accountList:"+accountList);
        return "account_look";
    }

    @RequestMapping("/accountfindby")
    public String accountfindby(HttpServletRequest request) {
        System.out.println("accountfindby...");
        String username = request.getParameter("username");
        String tel = request.getParameter("tel");
        String account_status = request.getParameter("account_status");
        List<Account> accountList = accountServiceImpl.findBy(username,account_status,tel);
        request.setAttribute("username",username);
        request.setAttribute("tel",tel);
        request.setAttribute("account_status",account_status);
        request.setAttribute("accountList", accountList);
        System.out.println("accountList:" + accountList);
        return "account_look";
    }
    @RequestMapping("/account_detail")
    public String account_detail(HttpServletRequest request,Integer id) {
//        System.out.println("account_detail页面...");
//        System.out.println("id"+id);
        Account account = accountServiceImpl.findOneById(id);
        List<Order> orders = orderServiceImpl.selectorderByUserId(account.getId());
        request.setAttribute("account",account);
        request.setAttribute("orders",orders);
        System.out.println("orders"+orders);
        return "account_detail";
    }






    /**
     * 各种动作的发起的请求
     * @return
     */
    @RequestMapping("/loginAccount_action")
    public String loginAccount_action(HttpServletRequest request, HttpSession session,String username,String password){
        Account account_back = accountServiceImpl.findAccountIsExist( new Account(username, password));
        System.out.println("loginAccount_action...3");
        if(account_back!=null){
            session.setAttribute("account_name",account_back.getName());
            session.setAttribute("account_id",account_back.getId());
            session.setAttribute("account_status",account_back.getAccount_status());
            System.out.println("account_id:"+session.getAttribute("account_id"));
            System.out.println("account_back:"+account_back);
            if(account_back.getPassword().equals(password)){
                if(account_back.getAccount_status()!=3) {
                    System.out.println("index_admin...");
                    return "index_houtai";
                }else {
                    System.out.println("index...");
                    return "forward:/account/index";
                }
            }else {
                return "/login";
            }

        }
        return "/register";


    }


    @RequestMapping("/register_action")
    public String register_action(HttpServletRequest request) throws ParseException {
        System.out.println("register_action...");
        Account account = Fclass.F_Account(request);
        account.setId(Uuid.getUUIDInOrderId());
        accountServiceImpl.saveAccount(account);
        return "redirect:/account/login";
    }


    @RequestMapping("/AccountEdit_action")
    public String AccountEdit_action(HttpServletRequest request,Account account)  {
        System.out.println("account:"+account);
        accountServiceImpl.updateAccount(account);
        return "redirect:/account/account_look";
    }
    @RequestMapping("/account_deleteAction")
    public String account_deleteAction(HttpServletRequest request,Integer id)  {
        System.out.println("accountid:"+id);
        accountServiceImpl.deleteAccount(id);
        return "redirect:/account/account_look";
//        完成用户显示界面
    }



}
