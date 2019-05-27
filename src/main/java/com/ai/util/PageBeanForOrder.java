package com.ai.util;



public class PageBeanForOrder<T> extends PageBean<T> {
    private Integer uid;
    private Integer state;

    public Integer getState0() {
        return state0;
    }

    public void setState0(Integer state0) {
        this.state0 = state0;
    }

    public Integer getState1() {
        return state1;
    }

    public void setState1(Integer state1) {
        this.state1 = state1;
    }

    public Integer getState2() {
        return state2;
    }

    public void setState2(Integer state2) {
        this.state2 = state2;
    }

    public Integer getState3() {
        return state3;
    }

    public void setState3(Integer state3) {
        this.state3 = state3;
    }

    private Integer state0;
    private Integer state1;
    private Integer state2;
    private Integer state3;


    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}
