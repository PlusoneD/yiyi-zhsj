package com.zhsj.service;

import com.zhsj.bean.record.MedRecord;

import java.util.List;

public interface MedRecordService {
	
	public List<MedRecord> queryAll();
	
//	public void saveMedRecord(MedRecord record);
	
	public List<MedRecord> queryByPatientId(String id);
	
	public List<MedRecord> queryByDoctorId(String id);

	void saveMedRecord(String medRecord_id, String doctor_id, String patient_id, String m_Time, String m_State,
			String m_Complaint, String m_InspectResult, String m_Diagnosis, String m_Advice);

	public List<MedRecord> queryByDoctor(String id, String time_start, String time_end);

	public List<MedRecord> queryByDoctor2(String id, String time_start, String time_end);
	
}
