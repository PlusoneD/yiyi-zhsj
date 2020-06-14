package com.zhsj.bean.medical;

public class DripList {
	private String DripList_id;
	private String Patient_id;
	private String Nurse_id;
	private String D_Time;

	public DripList(String dripList_id, String patient_id, String nurse_id, String d_Time) {
		DripList_id = dripList_id;
		Patient_id = patient_id;
		Nurse_id = nurse_id;
		D_Time = d_Time;
	}

	public String getDripList_id() {
		return DripList_id;
	}

	public void setDripList_id(String dripList_id) {
		DripList_id = dripList_id;
	}

	public String getPatient_id() {
		return Patient_id;
	}

	public void setPatient_id(String patient_id) {
		Patient_id = patient_id;
	}

	public String getNurse_id() {
		return Nurse_id;
	}

	public void setNurse_id(String nurse_id) {
		Nurse_id = nurse_id;
	}

	public String getD_Time() {
		return D_Time;
	}

	public void setD_Time(String d_Time) {
		D_Time = d_Time;
	}
}
