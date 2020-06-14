package com.zhsj.service.Impl;

import com.zhsj.bean.message.*;
import com.zhsj.bean.user.*;
import com.zhsj.dao.ChatPDao;
import com.zhsj.service.ChatPService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChatPServiceImpl implements ChatPService {
    private static final long serialVersionUID = 1L;

    // 注入Service依赖
    @Autowired
    private ChatPDao CPDao;

    @Override
    public List<Chat> queryChatPA(String Patient_id) {
        return CPDao.selectPAchat(Patient_id);
    }
    
    @Override
    public List<Chat> queryChatPL(String Patient_id) {
        return CPDao.selectPLchat(Patient_id);
    }
    
    @Override
    public List<Chat> queryChatSL(String Staff_id) {
        return CPDao.selectSLchat(Staff_id);
    }
    
    @Override
    public List<Information> queryInfoP(String Patient_id,String Staff_id) {
        return CPDao.selectPNDchat(Patient_id, Staff_id);
    }
    
    public void addinfo(String I_Text,String I_SendTime,String Chat_id,String User_id) {
    	CPDao.addinfo(I_Text,I_SendTime,Chat_id,User_id);
    }
    
    public void addlist(String Patient_id,String Staff_id) {
        CPDao.addlist(Patient_id,Staff_id);
    }
}
