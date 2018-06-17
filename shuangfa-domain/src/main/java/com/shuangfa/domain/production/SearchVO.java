package com.shuangfa.domain.production;

import com.shuangfa.domain.classify.Classify;

import java.util.List;

public class SearchVO {
    private Long cid;
    private String pnamedesc;
    private Integer page;
    private Integer pcount;
    private List<Production> list;
    private List<Classify> clist;
    private Integer totalPage;

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public List<Classify> getClist() {
        return clist;
    }

    public void setClist(List<Classify> clist) {
        this.clist = clist;
    }

    public Integer getPcount() {
        return pcount;
    }

    public void setPcount(Integer pcount) {
        this.pcount = pcount;
    }

    public Long getCid() {
        return cid;
    }

    public void setCid(Long cid) {
        this.cid = cid;
    }

    public String getPnamedesc() {
        return pnamedesc;
    }

    public void setPnamedesc(String pnamedesc) {
        this.pnamedesc = pnamedesc;
    }

    public List<Production> getList() {
        return list;
    }

    public void setList(List<Production> list) {
        this.list = list;
    }
}
