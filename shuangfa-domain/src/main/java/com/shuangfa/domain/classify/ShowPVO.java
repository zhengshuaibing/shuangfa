package com.shuangfa.domain.classify;

import com.shuangfa.domain.production.Production;

import java.util.List;

public class ShowPVO {
    private Long cid;
    private String cname;
    private String ccontent;
    private Integer cimgsize;
    private String cimg;

    private List<Production> list;

    public Long getCid() {
        return cid;
    }

    public void setCid(Long cid) {
        this.cid = cid;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
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

    public List<Production> getList() {
        return list;
    }

    public void setList(List<Production> list) {
        this.list = list;
    }
}
