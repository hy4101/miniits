package com.miniits.commons.utils;

import java.io.Serializable;
import java.util.List;

/**
 * Controller对象返回值
 * @author linaz
 * @created 2016.08.08 13:54
 */
public class Envelop implements Serializable{

    private boolean successFlg = true;

    private int pageSize = 15;

    private int currPage;

    private int totalPage;

    private int totalCount;

    private List detailModelList;

    private Object obj;

    private Object uobj;

    private String errorMsg;

    private int errorCode;

    public Object getObj() {
        return obj;
    }

    public Envelop setObj(Object obj) {
        this.obj = obj;
        return this;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public Envelop setTotalCount(int totalCount) {
        this.totalCount = totalCount;
        return this;
    }

    public boolean isSuccessFlg() {
        return successFlg;
    }

    public Envelop setSuccessFlg(boolean successFlg) {
        this.successFlg = successFlg;
        return this;
    }

    public List getDetailModelList() {
        return detailModelList;
    }

    public Envelop setDetailModelList(List detailModelList) {
        this.detailModelList = detailModelList;
        return this;
    }

    public String getErrorMsg() {
        return errorMsg;
    }

    public Envelop setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
        return this;
    }

    public int getErrorCode() {
        return errorCode;
    }

    public Envelop setErrorCode(int errorCode) {
        this.errorCode = errorCode;
        return this;
    }

    public int getPageSize() {
        return pageSize;
    }

    public Envelop setPageSize(int pageSize) {
        this.pageSize = pageSize;
        return this;
    }

    public int getCurrPage() {
        return currPage;
    }

    public Envelop setCurrPage(int currPage) {
        this.currPage = currPage;
        return this;
    }

    public int getTotalPage() {
        if (totalCount % pageSize == 0) {
            totalPage = totalCount / pageSize;
        } else {
            totalPage = totalCount / pageSize + 1;
        }
        return totalPage;
    }

    public Envelop setTotalPage(int totalPage) {
        this.totalPage = totalPage;
        return this;
    }

    public Object getUobj() {
        return uobj;
    }

    public void setUobj(Object uobj) {
        this.uobj = uobj;
    }

    public Envelop() {
    }

    public Envelop(boolean successFlg) {
        this.successFlg = successFlg;
    }
}