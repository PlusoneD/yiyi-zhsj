package com.zhsj.dao;

import com.zhsj.bean.record.MedRecord;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface MedRecordDao {
    List<MedRecord> selectAll();

    List<MedRecord> selectByPatientId(String id);
    
    MedRecord selectByMrId(String id);
    
    List<MedRecord> selectByDoctorId(String id);

	void insert(@Param("medRecord_id")String medRecord_id, @Param("doctor_id")String doctor_id, @Param("patient_id")String patient_id, @Param("m_Time")String m_Time, @Param("m_State")String m_State,
			@Param("m_Complaint")String m_Complaint, @Param("m_InspectResult")String m_InspectResult, @Param("m_Diagnosis")String m_Diagnosis, @Param("m_Advice")String m_Advice, @Param("m_PrescriptionInstructions")String m_PrescriptionInstructions);

	List<MedRecord> selectByDoctorAndTime(@Param("id")String id, @Param("time_start")String time_start, @Param("time_end")String time_end);

	List<MedRecord> selectByDoctorAndTime2(@Param("id")String id, @Param("time_start")String time_start, @Param("time_end")String time_end);

	String selectMaxMrId();
	
	void updateByPK(@Param("id")String id, @Param("m_Time")String m_Time, @Param("m_State")String m_State,
			@Param("m_Complaint")String m_Complaint, @Param("m_InspectResult")String m_InspectResult, @Param("m_Diagnosis")String m_Diagnosis, @Param("m_Advice")String m_Advice, @Param("m_PrescriptionInstructions")String m_PrescriptionInstructions);

}
