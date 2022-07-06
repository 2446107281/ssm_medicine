package com.bishe.service.Impl;


import com.bishe.dao.IShoppingCartDao;
import com.bishe.domain.ShoppingCart;
import com.bishe.service.IShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 药品操作的具体实现类
 */
@Service
public class ShoppingCartServiceImpl implements IShoppingCartService {

    @Autowired
    private IShoppingCartDao iShoppingCartDao;

    @Override
    public void addShoppingCart(ShoppingCart shoppingCart) {
        iShoppingCartDao.addShoppingCart(shoppingCart);

    }



    @Override
    public List<ShoppingCart> selectShoppingCartAll() {
        List<ShoppingCart> shoppingCarts = iShoppingCartDao.selectShoppingCartAll();
//        System.out.println("dao之后:"+shoppingCarts);
        return shoppingCarts;
    }

    @Override
    public void editShoppingCart(ShoppingCart shoppingCart) {
        iShoppingCartDao.editShoppingCart(shoppingCart);
    }

    @Override
    public void deleteShoppingCartById(Integer id) {
        iShoppingCartDao.deleteShoppingCartById(id);
    }

    @Override
    public ShoppingCart isExistShoppingCart(Integer A_id, Integer S_id) {
        ShoppingCart shoppingCart = iShoppingCartDao.isExistShoppingCart(A_id,S_id);
        return shoppingCart;
    }

    @Override
    public List<ShoppingCart> selectShoppingCartByAccount(Integer S_A_id) {
        return iShoppingCartDao.selectShoppingCartByAccount(S_A_id);
    }

    @Override
    public ShoppingCart selectShoppingCartById(Integer S_id) {
        return iShoppingCartDao.selectShoppingCartById(S_id);
    }
//    @Override
//    public void setShoppingCart(ShoppingCart shoppingCart) {
//        iShoppingCartDao.setShoppingCart(shoppingCart);
//    }
}
