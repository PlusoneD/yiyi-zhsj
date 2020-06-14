package com.zhsj.bean.message;

public class Chat {
	private String Chat_id;
	private String Patient_id;
	private String Staff_id;

	public Chat(String chat_id, String patient_id, String staff_id) {
		Chat_id = chat_id;
		Patient_id = patient_id;
		Staff_id = staff_id;
	}

	public String getChat_id() {
		return Chat_id;
	}

	public void setChat_id(String chat_id) {
		Chat_id = chat_id;
	}

	public String getPatient_id() {
		return Patient_id;
	}

	public void setPatient_id(String patient_id) {
		Patient_id = patient_id;
	}

	public String getStaff_id() {
		return Staff_id;
	}

	public void setStaff_id(String staff_id) {
		Staff_id = staff_id;
	}

}
