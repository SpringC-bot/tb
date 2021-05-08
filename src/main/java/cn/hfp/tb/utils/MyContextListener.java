package cn.hfp.tb.utils;

import com.alibaba.druid.pool.DruidDataSource;
import com.mysql.cj.jdbc.AbandonedConnectionCleanupThread;
import com.mysql.cj.jdbc.Driver;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.DriverManager;
import java.sql.SQLException;

/*设置的监听器解决项目关闭时线程溢出问题
* 即这里使用手动关闭
* */

public class MyContextListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        System.out.println("webService start");
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
        System.out.println("webService stop");
        try {
            while(DriverManager.getDrivers().hasMoreElements()) {
                DriverManager.deregisterDriver(DriverManager.getDrivers().nextElement());
            }
            System.out.println("jdbc Driver close");
            AbandonedConnectionCleanupThread.checkedShutdown();
            System.out.println("clean thread success");

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
