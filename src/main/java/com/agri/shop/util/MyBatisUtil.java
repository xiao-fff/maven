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
            InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
            factory = new SqlSessionFactoryBuilder().build(is);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 重载方法：支持手动控制事务提交/回滚
    public static SqlSession getSqlSession(boolean autoCommit) {
        if(factory == null){
            throw new RuntimeException("MyBatis初始化失败，请检查配置文件");
        }
        return factory.openSession(autoCommit);
    }

    // 保留原有方法，兼容旧代码
    public static SqlSession getSqlSession() {
        return getSqlSession(false); // 默认为手动提交
    }
}