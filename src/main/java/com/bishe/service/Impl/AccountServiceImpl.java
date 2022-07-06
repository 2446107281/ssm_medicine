package com.bishe.service.Impl;

import com.bishe.dao.IAccountDao;
import com.bishe.domain.Account;
import com.bishe.service.IAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("accountServiceImpl")
public class AccountServiceImpl implements IAccountService {



   @Autowired
   @Qualifier("iAccountDao")
    private IAccountDao iAccountDao;

    @Override
    public List<Account> findAllAccount() {
//        System.out.println("findAllAccount...");
        return iAccountDao.findAllAccount();
    }

    @Override
    public List<Account> findBy(String username, String account_status, String tel) {
        return iAccountDao.findBy(username,account_status,tel);
    }


    @Override
    public Account findOneById(Integer id) {
//        System.out.println("account_dao"+iAccountDao.findOneById(id));
        return iAccountDao.findOneById(id);
    }



    @Override
    public void updateAccount(Account account) {
    iAccountDao.updateAccount(account);
    }

    @Override
    public void deleteAccount(Integer id) {

    }

    @Override
    public Account findAccountIsExist(Account account) {
        if (iAccountDao!=null){
//            System.out.println("iAccountDao不是空");
            Account accountIsExist = iAccountDao.findAccountIsExist(account);
//            System.out.println(accountIsExist);
            if (accountIsExist != null) {
                return accountIsExist;
            }else {return null;}
        }
//        System.out.println("iAccountDao是空");
    return null;
    }

    @Override
    public void saveAccount(Account account) {
        iAccountDao.saveAccount(account);
    }

    public void setiAccountDao(IAccountDao iAccountDao) {
        this.iAccountDao = iAccountDao;
    }
}
