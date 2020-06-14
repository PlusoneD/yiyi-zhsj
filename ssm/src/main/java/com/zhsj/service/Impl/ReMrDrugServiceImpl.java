package com.zhsj.service.Impl;

import com.zhsj.bean.record.MedRecord;
import com.zhsj.bean.record.Re_Mr_Drug;
import com.zhsj.dao.MedRecordDao;
import com.zhsj.dao.ReMrDrugDao;
import com.zhsj.service.MedRecordService;
import com.zhsj.service.ReMrDrugService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;

@Service
public class ReMrDrugServiceImpl implements ReMrDrugService {
    private static final long serialVersionUID = 1L;

    // 注入Service依赖
    @Autowired
    private ReMrDrugDao reDao;

    @Override
    public void saveRelation(String r_id, String medRecord_id, String drug_id) {
    	reDao.insert(r_id,medRecord_id,drug_id);
	}
    
    @Override
	public List<Re_Mr_Drug> queryByMrId(String id) {
		// TODO Auto-generated method stub
		List<Re_Mr_Drug> re = reDao.selectByMrId(id);
		return re;
	}

	@Override
	public void deleteByPrimaryKey(String id) {
		reDao.deleteByPrimaryKey(id);
		
	}

	
  
}
