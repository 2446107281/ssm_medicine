package com.bishe.service.Impl;

import com.bishe.dao.IManuFacturerDao;
import com.bishe.domain.ManuFacturer;
import com.bishe.service.IManuFacturerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Lxh
 * @date 2022/4/2 21:32
 */
@Service("ManuFacturerServiceImpl")
public class ManuFacturerServiceImpl implements IManuFacturerService{

    @Autowired
    private IManuFacturerDao iManuFacturerDao;
    @Override
    public List<ManuFacturer> findAllManuFacturer() {
        return iManuFacturerDao.findAllManuFacturer();
    }

    @Override
    public List<ManuFacturer> findBy(String MF_name, String MF_person, String MF_phonenumber) {
        return null;
    }

    @Override
    public ManuFacturer findOneById(Integer id) {
        return iManuFacturerDao.findOneById(id);
    }

    @Override
    public void saveManuFacturer(ManuFacturer manufacturer) {
        iManuFacturerDao.saveManuFacturer(manufacturer);
    }

    @Override
    public void updateManuFacturer(ManuFacturer manufacturer) {
        iManuFacturerDao.updateManuFacturer(manufacturer);
    }

    @Override
    public void deleteManuFacturer(Integer id) {
        iManuFacturerDao.deleteManuFacturer(id);
    }

    @Override
    public ManuFacturer findManuFacturerIsExist(ManuFacturer manufacturer) {
        return iManuFacturerDao.findManuFacturerIsExist(manufacturer);
    }
}
