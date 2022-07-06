package com.bishe.dao;


import com.bishe.domain.MClassClassify;
import com.bishe.domain.Medicine;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

/**
 * 用于对于药品的增删改查的Dao
 */
@Repository
public interface IMedicineDao {

    /**
     * 用于向药品详细的信息表(m_message)中添加药品的信息
     * @param medicine
     */
    @Insert("Insert into m_message(M_id,M_name,M_date,M_manufacturer,M_classifiy,M_class,M_inprice,M_outprice,M_in_much,M_out_much,M_explain,M_createtime,M_create_account)" +
            " values(#{M_id},#{M_name},#{M_date},#{M_manufacturer},#{M_classifiy},#{M_class},#{M_inprice},#{M_outprice},#{M_in_much},#{M_out_much},#{M_explain},#{M_createtime},#{M_create_account})")
    void addMedicine(Medicine medicine);

    /**
     * 查询所有的药品的信息并封装到list集合中
     * @return 返回所有的药品的集合
     */
    @Select("select * from m_message")
    List<Medicine> selectMedicineAll();

    /**
     * 根据药品的id潮汛药品的信息并返回
     * @return 返回所有的药品的集合
     */
    @Select("select * from m_message where M_id = #{id}")
    Medicine selectMedicineById(@Param("id") Integer M_id);

    /**
     * 修改并保存药品的信息
     * @param medicine
     */
    @Update("update m_message set M_name=#{M_name},M_date=#{M_date},M_manufacturer=#{M_manufacturer},M_classifiy=#{M_classifiy}," +
            "M_class=#{M_class},M_inprice=#{M_inprice},M_outprice=#{M_outprice},M_in_much=#{M_in_much},M_out_much=#{M_out_much},M_explain=#{M_explain},M_createtime=#{M_createtime},M_create_account=#{M_create_account} where M_id=#{M_id}")
     void editMedicine(Medicine medicine);

    /**
     *
     */
    @Delete("delete from m_message where M_id=#{id}")
    void deleteMedicineById(@Param("id") Integer id);

    @Select("select * from m_message where M_class = #{mClass}")
    List<Medicine> selectMedicineByMClass(@Param("mClass") MClassClassify mClass);

    List<Medicine> findBy(@Param("M_name")String M_name,@Param("M_classifiy")String M_classifiy, @Param("M_manufacturer")String M_manufacturer);

}
