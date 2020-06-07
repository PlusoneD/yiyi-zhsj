package com.zhsj.service.Impl;

import com.zhsj.bean.medical.Drug;
import com.zhsj.dao.DrugDao;
import com.zhsj.service.DrugService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DrugServiceImpl implements DrugService {
    private static final long serialVersionUID = 1L;

    // 注入Service依赖
    @Autowired
    private DrugDao drugDao;

    @Override
    public List<Drug> queryAll() {
		// TODO Auto-generated method stub
		return drugDao.selectAll();
	}
    @Override
    public void delDrug(String id) {
    	drugDao.deleteByPrimaryKey(id);
	}
    @Override
    public void updateDrug(String drug_id, String d_CName, String d_CommonName, String d_EngName, String d_ShowName,
			String d_Component, String d_Indication, String d_Dosage, String d_Contraindications, String d_Precautions,
			String d_AdverseReactions, String d_DrugInteractions, String d_Type, String d_Pack,
			String d_InnComponentName) {
    	drugDao.updateByPrimaryKey(drug_id,d_CName,d_CommonName,d_EngName,d_ShowName,d_Component,d_Indication,d_Dosage,d_Contraindications,d_Precautions,d_AdverseReactions,d_DrugInteractions,d_Type,d_Pack,d_InnComponentName);
	}
	@Override
	public void saveDrug(String drug_id, String d_CName, String d_CommonName, String d_EngName, String d_ShowName,
			String d_Component, String d_Indication, String d_Dosage, String d_Contraindications, String d_Precautions,
			String d_AdverseReactions, String d_DrugInteractions, String d_Type, String d_Pack,
			String d_InnComponentName) {
		// TODO Auto-generated method stub
		drugDao.insert(drug_id,d_CName,d_CommonName,d_EngName,d_ShowName,d_Component,d_Indication,d_Dosage,d_Contraindications,d_Precautions,d_AdverseReactions,d_DrugInteractions,d_Type,d_Pack,d_InnComponentName);
		
	}
}
