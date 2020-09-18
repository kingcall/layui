package com.kingcall.layui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
@RequestMapping("/base")
public class FunctionController extends BaseController{

    @GetMapping("/upload")
    public String upLoad() {
        return "文件上传";
    }

    @ResponseBody
    @PostMapping("/upload")
    public String upload(@RequestParam(value = "file") MultipartFile file) throws IOException {
        uploadService.upload(file);
        return "{\"code\": 0,\"msg\":\"sucess\"}";
    }

    @GetMapping("/lunbo")
    public String lunbo()  {
        return "轮播图";
    }


    @GetMapping("/grid")
    public String grid()  {
        return "页面布局";
    }

    @GetMapping("/menu")
    public String menu()  {
        return "水平菜单";
    }


}
