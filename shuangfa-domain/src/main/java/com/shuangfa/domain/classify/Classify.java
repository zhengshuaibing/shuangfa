package com.shuangfa.domain.classify;

public class Classify {
    private Long id;
    private String cname;
    private String cdescribe;
    private String ccontent;
    private Integer cimgsize;
    private String cimg;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getCdescribe() {
        return cdescribe;
    }

    public void setCdescribe(String cdescribe) {
        this.cdescribe = cdescribe;
    }

    public String getCcontent() {
        return ccontent;
    }

    public void setCcontent(String ccontent) {
        this.ccontent = ccontent;
    }

    public Integer getCimgsize() {
        return cimgsize;
    }

    public void setCimgsize(Integer cimgsize) {
        this.cimgsize = cimgsize;
    }

    public String getCimg() {
        return cimg;
    }

    public void setCimg(String cimg) {
        this.cimg = cimg;
    }
}
