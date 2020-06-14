package com.zhsj.service;

import com.zhsj.bean.record.Re_Mr_Drug;

import java.util.List;


public interface ReMrDrugService {
	

	public List<Re_Mr_Drug> queryByMrId(String id);
	
	void deleteByPrimaryKey(String id);
	

	void saveRelation(String r_id, String medRecord_id, String drug_id);

	
}
