package com.bishe.test;


import com.bishe.dao.IAccountDao;
import com.bishe.domain.Account;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;

/**
 * 测试login功能
 */
public class TestLogin {
    @Test
    public void  login() throws IOException {
        //加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");
        //创建SqlSessionFactory对象
        SqlSessionFactory factory =  new SqlSessionFactoryBuilder().build(in);
        //用factory创建sqlsession对象
        SqlSession session = factory.openSession();
        //获得代理对象
        IAccountDao iAccountDao = session.getMapper(IAccountDao.class);
        //执行方法
        String username ="zhaoliu";
        Account account = new Account();
        account.setUsername(username);
        Account account_back = iAccountDao.findAccountIsExist(account);
        System.out.println("username: "+account_back.getUsername());
        System.out.println("password: "+account_back.getPassword());
    }
}
