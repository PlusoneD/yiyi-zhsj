package com.zhsj.bean.record;


public class MedRecord {
    private String MedRecord_id;
    private String Doctor_id;
    private String Patient_id;
    private String M_Time;
    private String M_State;
    private String M_Complaint;
    private String M_InspectResult;
    private String M_Diagnosis;
    private String M_Advice;
    
    public MedRecord(String medRecord_id,String doctor_id,String patient_id,String m_Time,String m_State,String m_Complaint,String m_InspectResult,String m_Diagnosis,String m_Advice) {
    	MedRecord_id = medRecord_id;
    	Doctor_id = doctor_id;
    	Patient_id = patient_id;
    	M_Time = m_Time;
    	M_State = m_State;
    	M_Complaint = m_Complaint;
    	M_InspectResult = m_InspectResult;
    	M_Diagnosis = m_Diagnosis;
    	M_Advice = m_Advice;
    	
    }
 
    public String getId() {
        return MedRecord_id;
    }
 
    public void setId(String id) {
        this.MedRecord_id = id;
    }
    public String getDoctor_id() {
        return Doctor_id;
    }
 
    public void setDoctor_id(String id) {
        this.Doctor_id = id;
    }
    public String getPatient_id() {
        return Patient_id;
    }
 
    public void setPatient_id(String id) {
        this.Patient_id = id;
    }
    public String getTime() {
        return M_Time;
    }
 
    public void setTime(String time) {
        this.M_Time = time;
    }
    public String getState() {
        return M_State;
    }
 
    public void setState(String state) {
        this.M_State = state;
    }
 
    public String getInspect() {
        return M_InspectResult;
    }
 
    public void setInspect(String result) {
        this.M_InspectResult = result == null ? null : result.trim();
    }
    
    public String getComplaint() {
        return M_Complaint;
    }
 
    public void setComplaint(String complaint) {
        this.M_Complaint = complaint == null ? null : complaint.trim();
    }
    
    public String getDiagnosis() {
        return M_Diagnosis;
    }
 
    public void setDiagnosis(String Diagnosis) {
        this.M_Diagnosis = Diagnosis == null ? null : Diagnosis.trim();
    }
    
    public String getAdvice() {
        return M_Advice;
    }
 
    public void setAdvice(String Advice) {
        this.M_Advice = Advice == null ? null : Advice.trim();
    }
}