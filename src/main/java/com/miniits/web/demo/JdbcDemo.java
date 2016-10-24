package com.miniits.web.demo;


import com.miniits.web.webapp.user.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by miniits on 2016/10/24.
 *
 *  @author www.miniits.com
 *          迷你科技
 */
public class JdbcDemo {

    public static void main(String[] str){

        /**
         * 建立   Connection ： 用于连接连接
         *        PreparedStatement ：用于设置sql语句，参数，执行语句等
         *        ResultSet ：用于你查询出来的结果的存放
         */
        Connection connection = null;

        PreparedStatement preparedStatement = null;

        ResultSet resultSet = null;

        try {

            //加载驱动
            Class.forName("com.mysql.jdbc.Driver");

            //通过驱动管理类 DriverManager 连接数据库
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniits?characterEnconding=utf-8","root","123");

            //sql语句
            String sql = "select * FROM user where user_name = ?";

            //设置查询参数并执行语句
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1,"miniits");
            resultSet = preparedStatement.executeQuery();

            List<User> userList = new ArrayList<>();

            //循环结果集，存放 userlist 中
            while (resultSet.next()){
                User user = new User();
                user.setId(resultSet.getString("id"));
                user.setUserName(resultSet.getString("user_name"));
                user.setPassword(resultSet.getString("password"));
                user.seteMail(resultSet.getString("e_mail"));
                userList.add(user);
            }

            /**
             * 最后记得关闭资源
             *          connection
             *          preparedStatement
             *          resultSet
             *
             */
            if(connection != null)
                connection.close();

            if (preparedStatement != null)
                preparedStatement.close();

            if (resultSet != null)
                resultSet.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
