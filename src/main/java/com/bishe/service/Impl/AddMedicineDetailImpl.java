package com.bishe.service.Impl;

import com.bishe.dao.IAccountDao;
import com.bishe.dao.IAddMedicineDetailDao;
import com.bishe.domain.Account;
import com.bishe.domain.AddMedicineDetail;
import com.bishe.domain.Medicine;
import com.bishe.service.IAccountService;
import com.bishe.service.IAddMedicineDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service("addMedicineDetailImpl")
public class AddMedicineDetailImpl implements IAddMedicineDetailService {

    @Autowired
    private IAddMedicineDetailDao iAddMedicineDetailDao;

    @Override
    public void addMeddicineDetail(AddMedicineDetail addMeddicineDetail) {
        iAddMedicineDetailDao.addMeddicineDetail(addMeddicineDetail);
    }
}
