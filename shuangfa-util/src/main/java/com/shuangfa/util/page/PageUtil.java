package com.shuangfa.util.page;

public class PageUtil {
    private Integer page;
    private Integer pageSize;
    private Integer totalCount;

    public PageUtil(Integer page, Integer pageSize, Integer totalCount) {
        this.page = page == null ? 1 : page;
        this.pageSize = pageSize;
        this.totalCount = totalCount;
    }

    public int begin(){
        return (page - 1) * pageSize;
    }

    public int offset(){
        return pageSize;
    }

    public int page(){
        return page;
    }

    public int totalCount(){
        return totalCount;
    }

    public int totalPage(){
        int remainder = totalCount % pageSize;
        int quotient = totalCount/pageSize;
        return remainder == 0 ? quotient : quotient + 1;
    }
}
