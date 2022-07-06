package com.bishe.test;

import com.bishe.domain.Account;
import com.bishe.service.IAccountService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * 测试spring
 */
public class TestSpring {
    @Test
    public void run1(){
        //拿到spring核心容器
        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        //拿到bean
        IAccountService accountService = (IAccountService) ac.getBean("accountService");
        accountService.findAllAccount();
        System.out.println("test...");

    }
    @Test
    public void run2(){
        //拿到spring核心容器
        ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        //拿到bean
        IAccountService accountService = (IAccountService) ac.getBean("accountService");
        accountService.findAllAccount();
        System.out.println("test...");

    }

}
