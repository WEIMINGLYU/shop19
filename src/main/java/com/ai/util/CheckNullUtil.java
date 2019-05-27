package com.ai.util;

public class CheckNullUtil {

    public  static  boolean checkMessage(String str){
        boolean flag = true;
        if(str==null||"".equals(str)) {

           return false;
        }
        if (str.trim() == null || "".equals(str.trim())) {
            flag = false;
        }
        return flag;
    }
}
