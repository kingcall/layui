package com.kingcall.layui.util;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

import com.aliyun.oss.ClientException;
import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import com.aliyun.oss.OSSException;
import com.aliyun.oss.model.CompleteMultipartUploadResult;
import com.aliyun.oss.model.UploadFileRequest;
import com.aliyun.oss.model.UploadFileResult;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.multipart.MultipartFile;

/**
 * @author kingcall
 */
@Slf4j
public class AliUploadUtil {
    private static String endpoint = "oss-cn-hangzhou.aliyuncs.com";
    private static String accessKeyId = "LTAIIHryZGmZFuLc";
    private static String accessKeySecret = "wvUlpIG7fPRvDUew5K42n2gUCvr3hN";
    private static String bucketName = "kingcall";
    private static String Filekey = "blog/docker-compose.yml";
    private static String uploadFile = "C:\\Users\\Wenqliu\\Desktop\\docker-compose.yml";

    public static void uploadFile(MultipartFile file) {
        OSS ossClient = new OSSClientBuilder().build(endpoint, accessKeyId, accessKeySecret);
        String fileName = file.getOriginalFilename();
        log.info("上传的文件名为：" + fileName);
        // 获取文件的后缀名
        String suffixName = fileName.substring(fileName.lastIndexOf("."));
        log.info("上传的后缀名为：" + suffixName);
        InputStream inputStream = null;
        try {
            inputStream = file.getInputStream();
        } catch (IOException e) {
            e.printStackTrace();
        }
        UploadFileRequest uploadFileRequest = new UploadFileRequest(bucketName, Filekey);
        // The local file to upload---it must exist.
        uploadFileRequest.setUploadFile(uploadFile);
        // Sets the concurrent upload task number to 5.
        uploadFileRequest.setTaskNum(5);
        // Sets the part size to 1MB.
        uploadFileRequest.setPartSize(1024 * 1024 * 1);
        // Enables the checkpoint file. By default it's off.
        uploadFileRequest.setEnableCheckpoint(true);
        ossClient.putObject(bucketName, "blog/" + fileName, inputStream);
    }
}
