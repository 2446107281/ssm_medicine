package com.bishe.service;

import com.bishe.domain.Account;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface IAccountService {
    /**
     * 查询所有的用户信息
     * @return
     */

    List<Account> findAllAccount();




    List<Account> findBy(String username, String account_status, String tel);

    /**
     * 查询一个账户的信息
     * @param id
     * @return
     */

    Account findOneById(Integer id);

    /**
     * 保存账户的信息
     * @param account
     */

    void saveAccount(Account account);

    /**
     * 更新账户的信息
     * @param account
     */
    void updateAccount(Account account);

    /**
     * 删除账户的信息
     * @param id
     */
    void deleteAccount(Integer id);

    /**
     * 查询在数据库中是否存在这个账户
     * @param account
     * @return
     */
    Account findAccountIsExist(Account account);



}
