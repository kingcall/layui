package com.kingcall.layui.config;


import com.jagregory.shiro.freemarker.ShiroTags;
import freemarker.template.TemplateModelException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import javax.annotation.PostConstruct;

//@Configuration
public class FreemarkerConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        //将所有/static/** 访问都映射到classpath:/static/ 目录下
        registry
                .addResourceHandler("/static/**")
                .addResourceLocations("classpath:/static/");
    }



    @Autowired
    private freemarker.template.Configuration configuration;



    @PostConstruct
    public void setUp() throws TemplateModelException {
        configuration.setSharedVariable("shiro", new ShiroTags());
    }

}
