package com.zhsj.service;

import com.zhsj.bean.medical.*;

import java.util.List;

public interface DripPService {
    List<Drip> queryDripP(String Patient_id);
}
