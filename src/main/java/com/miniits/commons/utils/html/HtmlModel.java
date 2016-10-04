package com.miniits.commons.utils.html;

/**
 * Created by wq on 2016/10/4.
 */
public class HtmlModel {

    private String templatePath;
    private String saveFilePath;
    private String saveFileName;
    private String fileReadPath;
    private boolean isNewFile;
    private boolean isNewDirectory;
    private boolean isSuccess;
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
}
