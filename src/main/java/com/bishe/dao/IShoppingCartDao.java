package com.bishe.dao;


import com.bishe.domain.MClassClassify;
import com.bishe.domain.Medicine;
import com.bishe.domain.ShoppingCart;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 用于对于购物车内药品的增删改查的Dao
 */
@Repository
public interface IShoppingCartDao {

    /**
     * 用于向购物车添加药品的信息
     * @param shoppingCart
     */
    @Insert("Insert into shoppingcart(S_id,S_A_id,S_M_id,S_name,S_manufacturer,S_price,S_much)" +
            " values(#{S_id},#{S_A_id},#{S_M_id},#{S_name},#{S_manufacturer},#{S_price},#{S_much})")
    void addShoppingCart(ShoppingCart shoppingCart);

    /**
     * 查询购物车内所有的药品的信息并封装到list集合中
     * @return 返回所有的药品的集合
     */
    @Select("select * from shoppingcart")
    List<ShoppingCart> selectShoppingCartAll();

//    /**
//     * 根据药品的id潮汛药品的信息并返回
//     * @return 返回所有的药品的集合
//     */
//    @Select("select * from shoppingcart where M_id = #{id}")
//    Medicine selectMedicineById(@Param("id") Integer M_id);

    /**
     * 修改并保存购物车内药品的信息
     * @param shoppingCart
     */
    @Update("update shoppingcart set S_name=#{S_name},S_manufacturer=#{S_manufacturer}," +
            "S_price=#{S_price},S_much=#{S_much} where S_M_id=#{S_M_id} and S_A_id=#{S_A_id}")
     void editShoppingCart(ShoppingCart shoppingCart);

    /**
     *
     */
    @Delete("delete from shoppingcart where S_id=#{S_id}")
    void deleteShoppingCartById( @Param("S_id")Integer id);


    @Select("select * from shoppingcart where S_M_id=#{S_M_id} and S_A_id=#{S_A_id}")
    ShoppingCart isExistShoppingCart(@Param("S_A_id")Integer A_id, @Param("S_M_id")Integer S_id);

    /**
     *
     * @param S_A_id
     * @return
     */
    @Select("select * from shoppingcart where S_A_id=#{S_A_id}")
    List<ShoppingCart> selectShoppingCartByAccount(@Param("S_A_id") Integer S_A_id);

    @Select("select * from shoppingcart where S_id=#{S_id}")
    ShoppingCart selectShoppingCartById(@Param("S_id") Integer S_id);
}
