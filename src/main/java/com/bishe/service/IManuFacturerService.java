package com.bishe.service;

import com.bishe.domain.Account;
import com.bishe.domain.ManuFacturer;
import org.apache.ibatis.annotations.Insert;

import java.util.List;

/**
 * @author Lxh
 * @date 2022/4/2 21:27
 */
public interface IManuFacturerService {
    /**
     * 查询所有的药厂信息
     * @return
     */

    List<ManuFacturer> findAllManuFacturer();

    List<ManuFacturer> findBy(String MF_name,String MF_person,String MF_phonenumber);

    /**
     * 查询一个药厂的信息
     * @param id
     * @return
     */

    ManuFacturer findOneById(Integer id);

    /**
     * 保存药厂的信息
     * @param manufacturer
     */
    
    void saveManuFacturer(ManuFacturer manufacturer);

    /**
     * 更新药厂的信息
     * @param manufacturer
     */
    void updateManuFacturer(ManuFacturer manufacturer);

    /**
     * 删除药厂的信息
     * @param id
     */
    void deleteManuFacturer(Integer id);

    /**
     * 查询在数据库中是否存在这个药厂
     * @param manufacturer
     * @return
     */
    ManuFacturer findManuFacturerIsExist(ManuFacturer manufacturer);


}
