package com.kingcall.layui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
@RequestMapping("/menu")
public class MenuController extends BaseController{
    @RequestMapping("/{id:\\d*}")
    @ResponseBody
    public String menu(@PathVariable(name = "id") int id)  {
        System.out.println("菜单呗请求");
        return "{\"data\":\"水平菜单\"+id}";
    }




}
