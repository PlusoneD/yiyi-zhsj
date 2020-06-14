package com.zhsj.service.Impl;

import com.zhsj.bean.record.MedRecord;
import com.zhsj.dao.MedRecordDao;
import com.zhsj.service.MedRecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;

@Service
public class MedRecordServiceImpl implements MedRecordService {
    private static final long serialVersionUID = 1L;

    // 注入Service依赖
    @Autowired
    private MedRecordDao medrecordDao;

    @Override
    public List<MedRecord> queryAll() {
		// TODO Auto-generated method stub
		return medrecordDao.selectAll();
	}
    @Override
    public String saveMedRecord(String medRecord_id,String doctor_id,String patient_id,String m_Time,String m_State,String m_Complaint,String m_InspectResult,String m_Diagnosis,String m_Advice,String m_PrescriptionInstructions) {
    	String Mid=medrecordDao.selectMaxMrId().substring(7,10);
    	Integer number = Integer.parseInt(Mid) + 1;
    	String _id = "MR2020" + String.format("%04d", number)+"kl";
		medrecordDao.insert(_id,doctor_id,patient_id,m_Time,m_State,m_Complaint,m_InspectResult,m_Diagnosis,m_Advice,m_PrescriptionInstructions);
	    return _id;
    }
    @Override
	public List<MedRecord> queryByPatientId(String id) {
		// TODO Auto-generated method stub
		List<MedRecord> medrecord = medrecordDao.selectByPatientId(id);
		return medrecord;
	}
    @Override
	public List<MedRecord> queryByDoctorId(String id) {
		// TODO Auto-generated method stub
		List<MedRecord> medrecord = medrecordDao.selectByDoctorId(id);
		return medrecord;
	}
	@Override
	public List<MedRecord> queryByDoctor(String id, String time_start, String time_end) {
		// TODO Auto-generated method stub
		List<MedRecord> medrecord = medrecordDao.selectByDoctorAndTime(id,time_start,time_end);
		return medrecord;
	}
	@Override
	public List<MedRecord> queryByDoctor2(String id, String time_start, String time_end) {
		// TODO Auto-generated method stub
		List<MedRecord> medrecord = medrecordDao.selectByDoctorAndTime2(id,time_start,time_end);
		return medrecord;
	}
	@Override
	public MedRecord queryByMrId(String id) {
		// TODO Auto-generated method stub
		
		return medrecordDao.selectByMrId(id);
	}
	@Override
	public String update(String id, String m_Time, String m_State, String m_Complaint, String m_InspectResult,
			String m_Diagnosis, String m_Advice, String m_PrescriptionInstructions) {
		medrecordDao.updateByPK(id,m_Time,m_State,m_Complaint, m_InspectResult,
				m_Diagnosis,m_Advice,m_PrescriptionInstructions);
		return id;
	}
	
	
}
