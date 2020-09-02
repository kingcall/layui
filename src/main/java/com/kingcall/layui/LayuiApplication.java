package com.kingcall.layui;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.net.InetAddress;

@Slf4j
@SpringBootApplication
public class LayuiApplication implements ApplicationRunner {
    @Value("${server.port}")
    private String port;

    public static void main(String[] args) {
        SpringApplication.run(LayuiApplication.class, args);
    }

    @Override
    public void run(ApplicationArguments args) throws Exception {
        InetAddress address = InetAddress.getLocalHost();
        String url = String.format("http://%s:%s", address.getHostAddress(), port);
        log.info(url);
        Runtime.getRuntime().exec("cmd  /c  start " + url);
    }
}
