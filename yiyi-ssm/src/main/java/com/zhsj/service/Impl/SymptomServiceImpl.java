package com.zhsj.service.Impl;

import com.zhsj.bean.triage.Symptom;
import com.zhsj.dao.SymptomDao;
import com.zhsj.service.SymptomService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SymptomServiceImpl implements SymptomService {
    private static final long serialVersionUID = 1L;

    // 注入Service依赖
    @Autowired
    private SymptomDao symDao;

    @Override
    public List<Symptom> queryAll() {
        return symDao.selectAll();
    }

    @Override
    public List<Symptom> queryByBodypart(String bodypart) {
        return symDao.selectByBodypart(bodypart);
    }

	@Override
	public void saveSym(String id,String bodypart,String description) {
		// TODO Auto-generated method stub
		symDao.insert(id,bodypart,description);
		
	}

	@Override
	public void delSym(String id) {
		// TODO Auto-generated method stub
		symDao.deleteByPrimaryKey(id);
		
	}

	@Override
	public void updateSym(String id, String bodypart, String description) {
		// TODO Auto-generated method stub
		symDao.updateByPrimaryKey(id,bodypart,description);
	}

	
		
	
}
