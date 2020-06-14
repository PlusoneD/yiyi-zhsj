package com.zhsj.dao;

import com.zhsj.bean.medical.*;
import com.zhsj.bean.user.*;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface DripPDao {
    List<Drip> selectPdrip(String Patient_id);
    List<DripList> selectNdrip(String Nurse_id);
    List<User> selectPall();
    List<Drug> selectDrug();
    List<Drug> selectMention(String Patient_id);

	public void updatefinish(@Param("Patient_id") String Patient_id,@Param("Nurse_id") String Nurse_id,@Param("D_Sequence") String D_Sequence);
	public void updatenext(@Param("Patient_id") String Patient_id,@Param("Nurse_id") String Nurse_id,@Param("D_Sequence") String D_Sequence,@Param("D_Time") String D_Time);

	public void addDL(@Param("Patient_id") String Patient_id,@Param("Nurse_id") String Nurse_id,@Param("D_Time") String D_Time);
	List<DripList> selectDLid(@Param("Patient_id") String Patient_id,@Param("Nurse_id") String Nurse_id);
	public void addD(@Param("DripList_id") String DripList_id,@Param("Drug_id") String Drug_id,@Param("D_Sequence") int D_Sequence,@Param("D_Dose") String D_Dose,@Param("D_State") String D_State,@Param("D_Time") String D_Time);
	public void addD2(@Param("DripList_id") String DripList_id,@Param("Drug_id") String Drug_id,@Param("D_Sequence") int D_Sequence,@Param("D_Dose") String D_Dose,@Param("D_State") String D_State);
}
