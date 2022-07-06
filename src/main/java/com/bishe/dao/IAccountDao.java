package com.bishe.dao;

import com.bishe.domain.Account;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 *
 * 用来操作账户的Dao
 */
@Repository("iAccountDao")
public interface IAccountDao {
    /**
     * 查询所有的用户信息
     * @return
     */
    @Select("select * from account")
    List<Account> findAllAccount();

    List<Account> findBy(@Param("username")String username, @Param("account_status")String account_status,@Param("tel") String tel);

    /**
     * 查询一个账户的信息
     * @param id
     * @return
     */
    @Select("select * from account where id = #{id} ")
    Account findOneById(Integer id);

    /**
     * 保存账户的信息
     * @param account
     */
    @Insert("insert into account(id,username,password,name,tel,gender,date,email) " +
            "values( #{id},#{username},#{password},#{name},#{tel},#{gender},#{date},#{email})")
    void saveAccount(Account account);

    /**
     * 更新账户的信息
     * @param account
     */
    @Update("update account set username = #{username},password=#{password},name=#{name},tel=#{tel},gender=#{gender},date=#{date},email=#{email}" +
            "where id = #{id}")
    void updateAccount(Account account);

    /**
     * 删除账户的信息
     * @param id
     */
    @Delete("delete from account where id=#{id}")
    void deleteAccount(Integer id);


    /**
     * 查询账户是否存在，返回Account
     * @param account
     */
    @Select("select * from account where username = #{username}")
    Account findAccountIsExist(Account account);


}
