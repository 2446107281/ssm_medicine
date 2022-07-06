package com.bishe.service;

import com.bishe.domain.Order;
import com.bishe.domain.ShoppingCart;

import java.util.List;

/**
 * 用于订单操作的Service
 */
public interface IOrderService {

    /**
     * 用于向购物车添加药品的信息
     * @param order
     */
    void addorder(Order order);

    /**
     * 查询订单的信息并封装到list集合中
     * @return 返回所有的药品的集合
     */
    List<Order> selectorderAll();
    List<Order> selectorderByUserId(Integer userId);

    void deleteorderById(Order order);

    /**
     * 根据id查询order
     * @param id
     * @return
     */
    Order selectorderById(Integer id);

//    /**
//     * 根据账户的id和药品的id判断order是否存在
//     * @param A_id
//     * @param S_id
//     * @return
//     */
//    Order isExistorder(Integer A_id, Integer S_id);
//
////    void setorder(order order);
}
