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
import java.util.Date;
import java.util.List;

/**
 * 测试mybatis
 */
public class TestMybatis {
    @Test
    public void run1() throws Exception {
        //先加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");
        //创建sqlsessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        //用factory创建sqlsession对象
        SqlSession session = factory.openSession();
        //获得代理对象
        IAccountDao dao = session.getMapper(IAccountDao.class);
        //执行方法
        List<Account> lists = dao.findAllAccount();
        for (Account account :lists){
            System.out.println(account.getName());
        }
        session.close();
        in.close();
    }
    @Test
    public void run2() throws Exception {
        //先加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");
        //创建sqlsessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        //用factory创建sqlsession对象
        SqlSession session = factory.openSession();
        //获得代理对象
        IAccountDao dao = session.getMapper(IAccountDao.class);
        //执行方法
        Account account = new Account();
        account.setUsername("zhaoliu");
        account.setPassword("zhaoliu");
        account.setTel("123456789");
        account.setName("赵六");
        account.setGender(1);
        account.setDate(new Date(2000,6,23));
        account.setEmail("123456789@qq.com");
        dao.saveAccount(account);
        session.commit();
        session.close();
        in.close();
    }
}
