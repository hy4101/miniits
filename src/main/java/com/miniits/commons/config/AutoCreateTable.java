package com.miniits.commons.config;

import com.miniits.web.user.blog.model.Blog;
import com.miniits.web.user.type.model.BlogType;
import com.miniits.web.web.emailvalidate.model.EMailValidate;
import com.miniits.web.web.image.model.Image;
import com.miniits.web.web.user.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.LocalSessionFactoryBean;

import javax.sql.DataSource;
import java.util.Properties;

/**
 * Created by wq on 2016/9/29.
 */

@Configuration
public class AutoCreateTable {

    @Autowired
    DataSource dataSource;

    @Bean
    public LocalSessionFactoryBean scanAnnotatedClasses(){
        LocalSessionFactoryBean localSessionFactoryBean = new LocalSessionFactoryBean();
        Properties properties = new Properties();
        properties.setProperty("hibernate.dialect","org.hibernate.dialect.MySQLDialect");
        properties.setProperty("hibernate.hbm2ddl.auto","update");
        properties.setProperty("hibernate.show_sql","true");
        properties.setProperty("hibernate.format_sql","true");
        localSessionFactoryBean.setDataSource(dataSource);
        localSessionFactoryBean.setHibernateProperties(properties);

        localSessionFactoryBean.setAnnotatedClasses(User.class, Image.class, EMailValidate.class,
                EMailValidate.class, Blog.class, BlogType.class);
        return localSessionFactoryBean;
    }
}
