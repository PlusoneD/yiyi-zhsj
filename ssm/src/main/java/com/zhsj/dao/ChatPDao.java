package com.zhsj.dao;

import com.zhsj.bean.message.*;
import com.zhsj.bean.user.*;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ChatPDao {
    List<Chat> selectPAchat(String Patient_id);
    List<Chat> selectPLchat(String Patient_id);
    List<Chat> selectSLchat(String Staff_id);
	List<Information> selectPNDchat(@Param("Patient_id") String Patient_id, @Param("Staff_id") String Staff_id);
	
	public void addinfo(@Param("I_Text") String I_Text,@Param("I_SendTime") String I_SendTime,@Param("Chat_id") String Chat_id,@Param("User_id") String User_id);
	public void addlist(@Param("Patient_id") String Patient_id, @Param("Staff_id") String Staff_id);

}