package com.kingcall.layui.service;

import com.kingcall.layui.util.AliUploadUtil;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class UploadService {
    public void upload(MultipartFile file) {
        AliUploadUtil.uploadFile(file);
    }
}
