package com.miniits.commons.utils.web;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.miniits.commons.utils.Envelop;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;

import java.beans.PropertyDescriptor;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.*;

/**
 * Created by wq on 2016/9/29.
 */
public class BaseUtil {

    @Autowired
    private ObjectMapper objectMapper;

    public <T> T toModel(String jsonData, Class<T> cls) {

        T model = null;
        try {
            model = objectMapper.readValue(jsonData, cls);
        } catch (IOException e) {
            return (T) ("模型转换失败,失败信息：" + e);
        }
        return model;
    }

    public String toJson(Object oj) {

        String jsonData = null;
        try {
            jsonData = objectMapper.writeValueAsString(oj);
        } catch (JsonProcessingException e) {
            return "json数据转换失败,失败信息：" + e;
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

    public Envelop getResultList(List detaiModelList) {
        Envelop envelop = new Envelop();
        envelop.setSuccessFlg(true);
        envelop.setDetailModelList(detaiModelList);
        return envelop;
    }

    public Envelop success(Object o) {
        Envelop envelop = new Envelop();
        if (null != o)
            envelop.setObj(o);
        envelop.setSuccessFlg(true);
        return envelop;
    }

    public Envelop success(Object o,Object o1) {
        Envelop envelop = new Envelop();
        if (null != o)
            envelop.setObj(o);
        if (null != o1)
            envelop.setUobj(o1);

        envelop.setSuccessFlg(true);
        return envelop;
    }

    public Envelop error(String error) {
        Envelop envelop = new Envelop();
        envelop.setSuccessFlg(false);
        envelop.setErrorMsg(error);
        return envelop;
    }

    /**
     * 将实体转换为模型。
     *
     * @param source
     * @param targetCls
     * @param properties
     * @param <T>
     * @return
     */
    public <T> T convertToModel(Object source, Class<T> targetCls, String... properties) {
        if (source == null) {
            return null;
        }
        T target = BeanUtils.instantiate(targetCls);
        BeanUtils.copyProperties(source, target, propertyDiffer(properties, targetCls));
        return target;
    }

    /**
     * 将实体集合转换为模型集合。
     *
     * @param sources
     * @param targets
     * @param properties
     * @param <T>
     * @return
     */
    public <T> Collection<T> convertToModels(Collection sources, Collection<T> targets, Class<T> targetCls, String properties) {
        if (sources == null) {
            return null;
        }
        Iterator iterator = sources.iterator();
        while (iterator.hasNext()) {
            Object source = iterator.next();

            T target = (T) BeanUtils.instantiate(targetCls);
            BeanUtils.copyProperties(source, target, propertyDiffer(StringUtils.isEmpty(properties) ? null : properties.split(","), targetCls));
            targets.add(target);
        }

        return targets;
    }


    /**
     * 计算不在类中的属性。
     *
     * @return
     */
    protected String[] propertyDiffer(String[] properties, Class targetCls) {
        if (properties == null || properties.length == 0) return null;

        PropertyDescriptor[] targetPds = BeanUtils.getPropertyDescriptors(targetCls);
        List<String> propertiesList = Arrays.asList(properties);
        List<String> arrayList = new ArrayList<>();

        for (PropertyDescriptor targetPd : targetPds) {
            Method writeMethod = targetPd.getWriteMethod();
            if (writeMethod != null && !propertiesList.contains(targetPd.getName())) {
                arrayList.add(targetPd.getName());
            }
        }

        return arrayList.toArray(new String[arrayList.size()]);
    }


}
