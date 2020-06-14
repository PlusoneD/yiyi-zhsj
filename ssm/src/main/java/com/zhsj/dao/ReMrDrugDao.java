package com.zhsj.dao;

import com.zhsj.bean.record.Re_Mr_Drug;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ReMrDrugDao {

    List<Re_Mr_Drug> selectByMrId(String id);
    
    void deleteByPrimaryKey(String id);
    
	void insert(@Param("r_id")String r_id,@Param("medRecord_id")String medRecord_id,  @Param("drug_id")String drug_id);
}
