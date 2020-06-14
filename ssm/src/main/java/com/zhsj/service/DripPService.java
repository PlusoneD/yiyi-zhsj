package com.zhsj.service;

import com.zhsj.bean.medical.*;
import com.zhsj.bean.user.*;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface DripPService {
    List<Drip> queryDripP(String Patient_id);
    List<DripList> queryDripN(String Nurse_id);
    List<User> queryAllP();
    List<Drug> queryDrug();
    List<Drug> queryMention(String Patient_id);
    
	public void updateFinish(String Patient_id, String Nurse_id,String D_Sequence);
	public void updateNext( String Patient_id, String Nurse_id, String D_Sequence, String D_Time);

	public void addDL( String Patient_id, String Nurse_id, String D_Time);
	List<DripList> selectDLid(String Patient_id,String Nurse_id);
	public void addD(String DripList_id,String Drug_id,int D_Sequence,String D_Dose,String D_State,String D_Time);
	public void addD2(String DripList_id,String Drug_id,int D_Sequence,String D_Dose,String D_State);
}
