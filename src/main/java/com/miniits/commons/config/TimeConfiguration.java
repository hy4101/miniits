package com.miniits.commons.config;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;
import java.text.SimpleDateFormat;

/**
 * Created by wq on 2016/12/8.
 */

@Configuration
public class TimeConfiguration {

    @Autowired
    private ObjectMapper objectMapper;

    @PostConstruct
    protected void objectMapperConfig() throws JsonProcessingException {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); //yyyy-MM-dd'T'HH:mm:ss'Z'ZZ
        objectMapper.setDateFormat(dateFormat);
    }


}
