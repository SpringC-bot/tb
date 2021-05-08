package cn.hfp.tb.pojo;

import java.io.Serializable;
import java.util.Calendar;

/**
 * ip_msg表
 */
public class IpMessage implements Serializable {
    private String url;
    private String lastLoginIp;
    private Calendar loginTime;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getLastLoginIp() {
        return lastLoginIp;
    }

    public void setLastLoginIp(String lastLoginIp) {
        this.lastLoginIp = lastLoginIp;
    }

    public Calendar getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(Calendar loginTime) {
        this.loginTime = loginTime;
    }

    @Override
    public String toString() {
        return "IpMessage{" +
                "url='" + url + '\'' +
                ", lastLoginIp='" + lastLoginIp + '\'' +
                ", loginTime=" + loginTime +
                '}';
    }
}
