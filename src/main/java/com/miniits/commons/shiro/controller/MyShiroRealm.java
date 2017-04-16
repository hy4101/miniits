package com.miniits.commons.shiro.controller;

import com.miniits.web.web.user.model.User;
import com.miniits.web.web.user.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author   WQ
 * @myblog   WWW.MINIITS.COM
 * @create    2016年10月13日
 */
public class MyShiroRealm extends AuthorizingRealm{

    private static final Logger logger = LoggerFactory.getLogger(MyShiroRealm.class);

    @Autowired
    private UserService userDao;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        String loginName = (String)super.getAvailablePrincipal(principalCollection);
//        TUser user=userDao.findByName(loginName);// 实际项目中，这里可以根据实际情况做缓存，如果不做，Shiro自己也是有时间间隔机制，2分钟内不会重复执行该方法
//        if(user!=null){
//            SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
//            info.setRoles(user.getRolesName());
//            List<TRole> roleList=user.getRoleList();
//            for (TRole role : roleList) {
//                info.addStringPermissions(role.getPermissionsName());
//            }
//            return info;
//        }
        return null;
    }

    /**
     * 登录认证
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(
            AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken token=(UsernamePasswordToken) authenticationToken;
        User user=userDao.findByUserName(token.getUsername());
        if(user!=null){
            return new SimpleAuthenticationInfo(user.getUserName(), user.getPassword(), getName());
        }
        return null;
    }
}