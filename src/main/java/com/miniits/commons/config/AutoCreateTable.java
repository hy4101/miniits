package com.miniits.commons.config;

import com.miniits.web.user.article.model.Article;
import com.miniits.web.webapp.demo.shiro.model.TPermission;
import com.miniits.web.webapp.demo.shiro.model.TRole;
import com.miniits.web.webapp.demo.shiro.model.TUser;
import com.miniits.web.webapp.demo.shiro.model.TUserRole;
import com.miniits.web.webapp.emailvalidate.model.EMailValidate;
import com.miniits.web.webapp.image.model.Image;
import com.miniits.web.webapp.user.model.User;
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
                EMailValidate.class, Article.class);
        return localSessionFactoryBean;
    }
}
