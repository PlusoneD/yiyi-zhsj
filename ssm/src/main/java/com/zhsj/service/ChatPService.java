package com.zhsj.service;

import com.zhsj.bean.message.*;
import com.zhsj.bean.user.*;

import java.util.List;

public interface ChatPService {
    List<Chat> queryChatPA(String Patient_id);
    List<Chat> queryChatPL(String Patient_id);
    List<Chat> queryChatSL(String Staff_id);
    List<Information> queryInfoP(String Patient_id,String Staff_id);
    
    public void addinfo(String I_Text,String I_SendTime,String Chat_id,String User_id);
    public void addlist(String Patient_id,String Staff_id);
}
