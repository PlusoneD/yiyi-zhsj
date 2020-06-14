package com.zhsj.controller;

import com.zhsj.bean.user.Department;
import com.zhsj.service.DepService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class DepCon {
    @Autowired
    DepService DepSer;


    @RequestMapping(value = "/getDepByName", method = RequestMethod.POST)
    @ResponseBody
    public Department getDepByName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        Department dep = DepSer.queryByName(name);

        System.out.println(dep);
        return dep;
    }

    @RequestMapping(value = "/getDepByid", method = RequestMethod.POST)
    @ResponseBody
    public Department getDepByid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        Department dep = DepSer.queryByName(id);

        System.out.println(dep);
        return dep;
    }

    @RequestMapping(value = "/getAllDep", method = RequestMethod.POST)
    @ResponseBody
    public List<Department> getAllDep(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        List<Department> list = DepSer.queryAll();
        return list;
    }
}
