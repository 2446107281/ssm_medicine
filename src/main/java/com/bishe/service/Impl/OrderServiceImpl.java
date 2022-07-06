package com.bishe.service.Impl;

import com.bishe.dao.IOrderDao;
import com.bishe.domain.Order;
import com.bishe.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Lxh
 * @date 2022/4/20 14:05
 */
@Service
public class OrderServiceImpl implements IOrderService {

    @Autowired
    private IOrderDao iOrderDao;

    @Override
    public void addorder(Order order) {
        iOrderDao.addOrder(order);
    }

    @Override
    public List<Order> selectorderAll() {
        return iOrderDao.selectOrderAll();
    }

    @Override
    public List<Order> selectorderByUserId(Integer userId) {
        return iOrderDao.selectOrderByUserId(userId);
    }

    @Override
    public void deleteorderById(Order order) {
    iOrderDao.deleteOrderById(order);
    }

    @Override
    public Order selectorderById(Integer id) {
        return iOrderDao.selectOrderById(id);
    }
}
