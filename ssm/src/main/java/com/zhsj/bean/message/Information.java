package com.zhsj.bean.message;

public class Information {
	private String Information_id;
	private String I_Text;
	private String I_SendTime;
	private String Chat_id;
	private String User_id;

	public Information(String information_id, String i_Text, String i_SendTime, String chat_id, String user_id) {
		Information_id = information_id;
		I_Text = i_Text;
		I_SendTime = i_SendTime;
		Chat_id = chat_id;
		User_id = user_id;
	}

	public String getInformation_id() {
		return Information_id;
	}

	public void setInformation_id(String information_id) {
		Information_id = information_id;
	}

	public String getI_Text() {
		return I_Text;
	}

	public void setI_Text(String i_Text) {
		I_Text = i_Text;
	}

	public String getI_SendTime() {
		return I_SendTime;
	}

	public void setI_SendTime(String i_SendTime) {
		I_SendTime = i_SendTime;
	}

	public String getChat_id() {
		return Chat_id;
	}

	public void setChat_id(String chat_id) {
		Chat_id = chat_id;
	}

	public String getUser_id() {
		return User_id;
	}

	public void setUser_id(String user_id) {
		User_id = user_id;
	}
}
