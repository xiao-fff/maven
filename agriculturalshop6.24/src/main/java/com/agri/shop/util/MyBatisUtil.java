package com.agri.shop.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

 
import java.io.InputStream;

public class MyBatisUtil {
    private static SqlSessionFactory factory;

    static {
        try {
            // resources根目录下的mybatis-config.xml，路径正确
            InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
            factory = new SqlSessionFactoryBuilder().build(is);
        } catch (Exception e) {
            // 这里会打印底层真实错误，看控制台红色日志
            e.printStackTrace();
        }
    }

    public static SqlSession getSqlSession() {
        // 防止factory为null空指针
        if(factory == null){
            throw new RuntimeException("MyBatis初始化失败，请检查配置文件");
        }
        return factory.openSession();
    }
}