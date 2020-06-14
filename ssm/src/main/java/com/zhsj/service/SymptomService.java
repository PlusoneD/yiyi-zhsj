package com.zhsj.service;

import com.zhsj.bean.triage.Symptom;

import java.util.List;

public interface SymptomService {
    List<Symptom> queryAll();

    List<Symptom> queryByBodypart(String bodypart);
    
    Symptom queryById(String id);
	
	public void delSym(String id);

	public void saveSym(String id, String bodypart, String description);

	public void updateSym(String id, String bodypart, String description);
}
