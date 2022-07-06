package com.bishe.dao;

import com.bishe.domain.ManuFacturer;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 *
 * 用来操作药厂的Dao
 */
@Repository("iManuFacturerDao")
public interface IManuFacturerDao {
    /**
     * 查询所有的用户信息
     * @return
     */
    @Select("select * from manufacturer")
    List<ManuFacturer> findAllManuFacturer();

    List<ManuFacturer> findBy(@Param("MF_name") String MF_name,@Param("MF_person") String MF_person,@Param("MF_phonenumber") String MF_phonenumber);

    /**
     * 查询一个药厂的信息
     * @param MF_id
     * @return
     */
    @Select("select * from manufacturer where MF_id = #{MF_id}")
    ManuFacturer findOneById(@Param("MF_id") Integer MF_id);

    /**
     * 保存药厂的信息
     * @param manufacturer
     */
    @Insert("insert into manufacturer(MF_id,MF_name,MF_address,MF_person,MF_phonenumber,MF_email) " +
            "values( #{MF_id},#{MF_name},#{MF_address},#{MF_person},#{MF_phonenumber},#{MF_email} )")
    void saveManuFacturer(ManuFacturer manufacturer);

    /**
     * 更新药厂的信息
     * @param manufacturer
     */
    @Update("update manufacturer set MF_name = #{MF_name},MF_address=#{MF_address},MF_person=#{MF_person},MF_phonenumber=#{MF_phonenumber},MF_email=#{MF_email}" +
            "where MF_id = #{MF_id}")
    void updateManuFacturer(ManuFacturer manufacturer);

    /**
     * 删除药厂的信息
     * @param MF_id
     */
    @Delete("delete from manufacturer where MF_id=#{MF_id}")
    void deleteManuFacturer(Integer MF_id);


    /**
     * 查询药厂是否存在，返回ManuFacturer
     * @param manufacturer
     */
    @Select("select * from manufacturer where MF_id = #{MF_id}")
    ManuFacturer findManuFacturerIsExist(ManuFacturer manufacturer);


}
