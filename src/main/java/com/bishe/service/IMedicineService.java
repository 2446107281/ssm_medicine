package com.bishe.service;

import com.bishe.domain.MClassClassify;
import com.bishe.domain.Medicine;

import java.util.Date;
import java.util.List;

/**
 * 用于药品操作的Service
 */
public interface IMedicineService {
    /**
     * 用于向药品详细的信息表(m_message)中添加药品的信息
     * @param medicine
     */
    void addMedicine(Medicine medicine);
    /**
     * 查询所有的药品的信息并封装到list集合中
     * @return 返回所有的药品的集合
     */
    List<Medicine> selectMedicineAll();

    /**
     * 根据药品的id潮汛药品的信息并返回
     * @return 返回所有的药品的集合
     */
    Medicine selectMedicineById(Integer id);

    /**
     * 根据传来的信息改变要改变的药品的信息
     * @param medicine
     */
    void editMeddicine(Medicine medicine);

    /**
     * 根据id删除药品的信息
     * @param id
     */
    void deleteMedicineById(Integer id);

    /**
     * 根据药品的分类查询所有的所属的药品
     * @param mClass
     * @return
     */
    List<Medicine> selectMedicineByMClass(MClassClassify mClass);
    public List<Medicine> selectMedicineBy(String M_name,String M_classifiy, String M_manufacturer);
}
