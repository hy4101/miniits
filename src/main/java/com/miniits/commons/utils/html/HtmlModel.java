package com.miniits.commons.utils.html;

/**
 * Created by wq on 2016/10/4.
 */
public class HtmlModel {

    /**
     * 静态文件模板地址
     */
    private String templatePath;
    /**
     * 静态文件保存地址
     */
    private String saveFilePath;
    /**
     * 静态文件名称
     */
    private String saveFileName;
    /**
     * 静态文件读取地址（已经存在该文件）
     */
    private String fileReadPath;
    /**
     * 是否重新生成静态文件
     */
    private boolean isNewFile;
    /**
     * 是否重新生成静态文件夹（包括该文件夹下的文件）
     */
    private boolean isNewDirectory;
    /**
     * 是否成功生成静态文件
     */
    private boolean isSuccess;
    private String basePath;

    private String message;
    private Object entity;

    public String getTemplatePath() {
        return templatePath;
    }

    public void setTemplatePath(String templatePath) {
        this.templatePath = templatePath;
    }

    public String getSaveFilePath() {
        return saveFilePath;
    }

    public void setSaveFilePath(String saveFilePath) {
        this.saveFilePath = saveFilePath;
    }

    public String getSaveFileName() {
        return saveFileName;
    }

    public void setSaveFileName(String saveFileName) {
        this.saveFileName = saveFileName;
    }

    public boolean isNewFile() {
        return isNewFile = false;
    }

    public void setNewFile(boolean newFile) {
        isNewFile = newFile;
    }

    public boolean isNewDirectory() {
        return isNewDirectory = false;
    }

    public void setNewDirectory(boolean newDirectory) {
        isNewDirectory = newDirectory;
    }

    public boolean isSuccess() {
        return isSuccess = true;
    }

    public void setSuccess(boolean success) {
        isSuccess = success;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getEntity() {
        return entity;
    }

    public void setEntity(Object entity) {
        this.entity = entity;
    }

    public String getFileReadPath() {
        return fileReadPath;
    }

    public void setFileReadPath(String fileReadPath) {
        this.fileReadPath = fileReadPath;
    }

    public String getBasePath() {
        return basePath;
    }

    public void setBasePath(String basePath) {
        this.basePath = basePath;
    }
}
