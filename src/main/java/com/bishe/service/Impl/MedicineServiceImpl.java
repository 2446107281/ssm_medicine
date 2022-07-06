package com.bishe.service.Impl;


import com.bishe.dao.IMedicineDao;
import com.bishe.domain.MClassClassify;
import com.bishe.domain.Medicine;
import com.bishe.service.IMedicineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * 药品操作的具体实现类
 */
@Service
public class MedicineServiceImpl implements IMedicineService {

    @Autowired
    private IMedicineDao imedicineDao;

    /**
     * 实现药品添加的功能,调用Dao层来完成任务
     * @param medicine
     */
    @Override
    public void addMedicine(Medicine medicine) {
        imedicineDao.addMedicine(medicine);

    }
    /**
     * 查询所有的药品的信息并封装到list集合中
     * @return 返回所有的药品的集合
     */
    @Override
    public List<Medicine> selectMedicineAll() {
        List<Medicine> medicinelist = imedicineDao.selectMedicineAll();
        return medicinelist;
    }

    /**
     * 根据id查询药品信息并返回
     * @param id
     * @return
     */
    @Override
    public Medicine selectMedicineById(Integer id) {
        Medicine medicineById = imedicineDao.selectMedicineById(id);
        return medicineById;


    }

    /**
     * 改变药品的信息(edit)
     */
    @Override
    public void editMeddicine(Medicine medicine) {
        imedicineDao.editMedicine(medicine);

    }

    /**
     * 根据药品的id删除药品的信息
     * @param id
     */
    @Override
    public void deleteMedicineById(Integer id) {
        imedicineDao.deleteMedicineById(id);

    }

    /**
     * 根据药品的分类查询所有的所属的药品
     * @param mClass
     * @return
     */
    @Override
    public List<Medicine> selectMedicineByMClass(MClassClassify mClass) {
        List<Medicine> medicines = imedicineDao.selectMedicineByMClass(mClass);
        System.out.println("imedicineDao:"+medicines);
        return medicines;
    }

    @Override
    public List<Medicine> selectMedicineBy(String M_name,String M_classifiy,String M_manufacturer) {
        List<Medicine> by = imedicineDao.findBy(M_name,M_classifiy, M_manufacturer);
        return by;
    }
}
