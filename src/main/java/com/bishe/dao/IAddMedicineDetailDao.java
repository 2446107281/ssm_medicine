package com.bishe.dao;

import com.bishe.domain.Account;
import com.bishe.domain.AddMedicineDetail;
import com.bishe.domain.Medicine;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

/**
 *
 * 用来操作药品进货单的
 */
@Repository("iAddMedicineDetailDao")
public interface IAddMedicineDetailDao {


//        Integer addMedicineDetail_id, Integer account_id, Date date, Date medicine_date, Float medicine_price, Integer amount

    @Insert("insert into addmedicinedetail(addMedicineDetail_id,account_id,date,medicine_date,medicine_price,amount) values(#{addMedicineDetail_id},#{account_id},#{date},#{medicine_date},#{medicine_price},#{amount})")
    public void addMeddicineDetail(AddMedicineDetail addMeddicineDetail);


}
