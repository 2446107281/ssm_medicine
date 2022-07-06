package com.bishe.service;

import com.bishe.domain.MClassClassify;
import com.bishe.domain.ShoppingCart;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * 用于药品操作的Service
 */
public interface IShoppingCartService {

    /**
     * 用于向购物车添加药品的信息
     * @param shoppingCart
     */
    void addShoppingCart(ShoppingCart shoppingCart);

    /**
     * 查询购物车内所有的药品的信息并封装到list集合中
     * @return 返回所有的药品的集合
     */
    List<ShoppingCart> selectShoppingCartAll();

    /**
     * 修改并保存购物车内药品的信息
     * @param shoppingCart
     */
    void editShoppingCart(ShoppingCart shoppingCart);

    /**
     *
     */
    void deleteShoppingCartById(Integer id);

    /**
     * 根据账户的id和药品的id判断shoppingcart是否存在
     * @param A_id
     * @param S_id
     * @return
     */
    ShoppingCart isExistShoppingCart(Integer A_id, Integer S_id);

    /**
     * 通过用户的id查询本用户的购购车的内容
     * @param S_A_id
     * @return
     */
    List<ShoppingCart> selectShoppingCartByAccount(Integer S_A_id);

    /**
     * 通过id查询本用户的购购车的内容
     * @param S_A_id
     * @return
     */
    ShoppingCart selectShoppingCartById(Integer S_id);
//    void setShoppingCart(ShoppingCart shoppingCart);
}
