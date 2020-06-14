package com.zhsj.service.Impl;

import com.zhsj.bean.medical.*;
import com.zhsj.bean.user.*;
import com.zhsj.dao.DripPDao;
import com.zhsj.service.DripPService;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DripPServiceImpl implements DripPService {
    private static final long serialVersionUID = 1L;

    // 注入Service依赖
    @Autowired
    private DripPDao DPDao;

    @Override
    public List<Drip> queryDripP(String Patient_id) {
        return DPDao.selectPdrip(Patient_id);
    }
    
    @Override
    public List<DripList> queryDripN(String Nurse_id) {
        return DPDao.selectNdrip(Nurse_id);
    }
    
    @Override
    public List<User> queryAllP() {
        return DPDao.selectPall();
    }

    @Override
    public List<Drug> queryDrug() {
        return DPDao.selectDrug();
    }
    
    @Override
    public List<Drug> queryMention(String Patient_id) {
        return DPDao.selectMention(Patient_id);
    }
    
	public void updateFinish(String Patient_id, String Nurse_id,String D_Sequence) {
		DPDao.updatefinish(Patient_id, Nurse_id,D_Sequence);
	}
	
	public void updateNext( String Patient_id, String Nurse_id, String D_Sequence, String D_Time) {
		DPDao.updatenext(Patient_id, Nurse_id, D_Sequence, D_Time);
	}
	
	public void addDL(String Patient_id, String Nurse_id, String D_Time) {
		DPDao.addDL(Patient_id, Nurse_id, D_Time);
	}
	
	public List<DripList> selectDLid(String Patient_id,String Nurse_id){
		return DPDao.selectDLid(Patient_id,Nurse_id);
	}
	
	public void addD(String DripList_id,String Drug_id,int D_Sequence,String D_Dose,String D_State,String D_Time){
		DPDao.addD(DripList_id,Drug_id,D_Sequence, D_Dose,D_State, D_Time);
	}

	public void addD2(String DripList_id,String Drug_id,int D_Sequence,String D_Dose,String D_State){
		DPDao.addD2(DripList_id,Drug_id,D_Sequence, D_Dose,D_State);
	}


}
