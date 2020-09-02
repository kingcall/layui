package com.kingcall.layui.controller;

import com.kingcall.layui.service.UploadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class BaseController {
    @Autowired
    public UploadService uploadService;

    public String index(){
        return "index";
    }
}
