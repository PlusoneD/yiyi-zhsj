package com.zhsj.service;

import com.zhsj.bean.medical.Drug;
import java.util.List;

public interface DrugService {
	
	public List<Drug> queryAll();
	
	public void updateDrug(String drug_id, String d_CName, String d_CommonName, String d_EngName, String d_ShowName,
			String d_Component, String d_Indication, String d_Dosage, String d_Contraindications, String d_Precautions,
			String d_AdverseReactions, String d_DrugInteractions, String d_Type, String d_Pack,
			String d_InnComponentName);
	
	public void delDrug(String id);

	public void saveDrug(String drug_id, String d_CName, String d_CommonName, String d_EngName, String d_ShowName,
			String d_Component, String d_Indication, String d_Dosage, String d_Contraindications, String d_Precautions,
			String d_AdverseReactions, String d_DrugInteractions, String d_Type, String d_Pack,
			String d_InnComponentName);


	
}
