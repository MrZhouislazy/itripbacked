package com.code.bean;

import com.code.constant.TypeConstant;
import com.code.util.StringUtils;

/**
 * <p></p>
 * <p/>
 * Created by zzshang on 2015/11/12.
 */
public class Cloumn {

    private String cloumnName;
    private String comment;
    private String cloumnType;

    public String getCloumnName() {
        return cloumnName;
    }

    public void setCloumnName(String cloumnName) {
        this.cloumnName = cloumnName;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getCloumnType() {
        return cloumnType;
    }

    public void setCloumnType(String cloumnType) {
        this.cloumnType = cloumnType;
    }

    public String getFieldName() {
        return StringUtils.putOffUnderline(this.cloumnName);
    }
//
    // cloumn.javaType  cloumn.getJavaType()
    public String getJavaType() {
        String javaType = null;
        try {
            javaType = TypeConstant.getJavaType(this.cloumnType);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return javaType;
    }

    public String getUpperCasecloumnName() {
        return StringUtils.captureName(getFieldName());
    }
}
