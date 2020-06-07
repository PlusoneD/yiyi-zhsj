package com.zhsj.dao;

import com.zhsj.bean.medical.*;

import java.util.List;

public interface DripPDao {
    List<Drip> selectPdrip(String Patient_id);
}
