package com.kingcall.layui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
    public String menu(Model model)  {
        List<String> list = new ArrayList<>();
        list.add("1,sql select");
        list.add("2,sql insert");
        list.add("3,sql delete");
        list.add("4,sql update");
        list.add("5,sql 视图");
        list.add("6,sql 进阶");
        list.add("7,sql 高级");
        list.add("7,sql 高级");
        list.add("7,sql 高级");
        list.add("7,sql 高级");
        list.add("7,sql 高级");
        list.add("7,sql 高级");
        list.add("7,sql 高级");
        list.add("7,sql 高级");
        list.add("7,sql 高级");
        model.addAttribute("data", list);
        model.addAttribute("initContent", "这是一篇高级文章");
        return "垂直菜单";
    }


}
