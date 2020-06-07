package com.zhsj.dao;

import com.zhsj.bean.medical.Drug;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface DrugDao {

    List<Drug> selectAll();

	void insert(Drug drug);

	void deleteByPrimaryKey(String id);

	void insert(@Param("drug_id")String drug_id, @Param("d_CName")String d_CName, @Param("d_CommonName")String d_CommonName, @Param("d_EngName")String d_EngName, @Param("d_ShowName")String d_ShowName,
			@Param("d_Component")String d_Component, @Param("d_Indication")String d_Indication, @Param("d_Dosage")String d_Dosage, @Param("d_Contraindications")String d_Contraindications, @Param("d_Precautions")String d_Precautions,
			@Param("d_AdverseReactions")String d_AdverseReactions, @Param("d_DrugInteractions")String d_DrugInteractions, @Param("d_Type")String d_Type, @Param("d_Pack")String d_Pack,
			@Param("d_InnComponentName")String d_InnComponentName);

	void updateByPrimaryKey(@Param("drug_id")String drug_id, @Param("d_CName")String d_CName, @Param("d_CommonName")String d_CommonName, @Param("d_EngName")String d_EngName, @Param("d_ShowName")String d_ShowName,
			@Param("d_Component")String d_Component, @Param("d_Indication")String d_Indication, @Param("d_Dosage")String d_Dosage, @Param("d_Contraindications")String d_Contraindications, @Param("d_Precautions")String d_Precautions,
			@Param("d_AdverseReactions")String d_AdverseReactions, @Param("d_DrugInteractions")String d_DrugInteractions, @Param("d_Type")String d_Type, @Param("d_Pack")String d_Pack,
			@Param("d_InnComponentName")String d_InnComponentName);
}
