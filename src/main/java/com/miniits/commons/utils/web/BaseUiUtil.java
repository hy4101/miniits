package com.miniits.commons.utils.web;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.miniits.commons.utils.Envelop;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

/**
 * Created by wq on 2016/9/29.
 */
public class BaseUiUtil {

    @Autowired
    private ObjectMapper objectMapper;

    @Autowired
    private HttpServletRequest httpServletRequest;

    private String projectReal;

    String separator = File.separator;

    public <T> T toModel(String jsonData,Class<T> cls){

        T model = null;
        try {
            model = objectMapper.readValue(jsonData,cls);
        } catch (IOException e) {
            return (T) ("模型转换失败,失败信息："+e);
        }
        return model;
    }

    public String toJson(Object oj){

        String jsonData = null;
        try {
            jsonData = objectMapper.writeValueAsString(oj);
        } catch (JsonProcessingException e) {
            return "json数据转换失败,失败信息："+e;
        }

        return jsonData;
    }

    public Envelop getResult(List detaiModelList, int totalCount, int currPage, int rows) {

        Envelop envelop = new Envelop();
        envelop.setSuccessFlg(true);
        envelop.setDetailModelList(detaiModelList);
        envelop.setTotalCount(totalCount);
        envelop.setCurrPage(currPage);
        envelop.setPageSize(rows);
        if (envelop.getTotalCount() % envelop.getPageSize() > 0) {
            envelop.setTotalPage((envelop.getTotalCount() / envelop.getPageSize()) + 1);
        } else {
            envelop.setTotalPage(envelop.getTotalCount() / envelop.getPageSize());
        }

        return envelop;
    }


    public String getProjectReal(String userDefined) {
        return projectReal = httpServletRequest.getSession().getServletContext().getRealPath(separator)+separator+"WEB-INF"+separator+"jsp"+separator+userDefined+separator;
    }

    public void setProjectReal(String projectReal) {
        this.projectReal = projectReal;
    }
}
