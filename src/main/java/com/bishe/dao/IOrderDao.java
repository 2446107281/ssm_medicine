package com.bishe.dao;

import com.bishe.domain.Order;
import com.bishe.domain.ShoppingCart;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author Lxh
 * @date 2022/4/19 18:26
 */
@Repository
public interface IOrderDao {
    /**
     * 添加订单
     * @param order
     */
    @Insert("Insert into `order` (O_id,O_A_id,O_M_id,O_name,O_manufacturer,O_price,O_much,O_time)" +
            " values(#{O_id},#{O_A_id},#{O_M_id},#{O_name},#{O_manufacturer},#{O_price},#{O_much},#{O_time})")
    void addOrder(Order order);

    /**
     * 查询所有订单的信息并封装到list集合中
     * @return 返回所有的订单的集合
     */
    @Select("select * from order")
    List<Order> selectOrderAll();

    @Select("select * from `order` where O_A_id = #{userid}")
    List<Order> selectOrderByUserId(@Param("userid") Integer userId);
//
//    /**
//     * 修改并保存订单的信息
//     * @param order
//     */
//    @Update("update order set O_manufacturer=#{O_manufacturer}," +
//            "O_price=#{O_price},O_much=#{O_much} where O_id=#{O_id} and O_name=#{O_name}")
//    void editOrder(Order order);

    /**
     *
     */
    @Delete("delete from order where O_id=#{O_id}")
    void deleteOrderById(Order order);

    /**
     *
     * 根据id查询order
     * @param id
     * @return
     */
    @Select("select * from  `order` where O_id=#{id}")
    Order selectOrderById(@Param("id")Integer id);


//    @Select("select * from shoppingcart where A_id=#{A_id} and S_id = #{S_id}")
//    ShoppingCart isExistShoppingCart(@Param("A_id")Integer A_id, @Param("S_id")Integer S_id);
//
}
