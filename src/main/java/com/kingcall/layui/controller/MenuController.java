package com.kingcall.layui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
@RequestMapping("/menu")
public class MenuController extends BaseController{
    @GetMapping("/{id:\\d*}")
    @ResponseBody
    public String menu(@PathVariable(name = "id") int id)  {
        return "水平菜单";
    }


}
