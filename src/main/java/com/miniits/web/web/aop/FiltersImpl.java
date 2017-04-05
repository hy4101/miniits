package com.miniits.web.web.aop;/**
 * Created by wq on 2017/4/5.
 */

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * @author: wq
 * @Date:
 * @Time: <p>
 * Description:
 */

@Component
@Aspect
public class FiltersImpl {

    @Pointcut(value = "@annotation(com.miniits.web.web.aop.Filters))")
    private void testa(){}

//    @Around(value = "execution(* me.lichunlong.spring.service.*.*(..)) && @annotation(log)")

    @Around(value = "testa()&& @annotation(filters)")
    public Object asd(ProceedingJoinPoint proceedingJoinPoint,Filters filters) throws Throwable {
        Object[] args = proceedingJoinPoint.getArgs();
        for(Object obj : args){
            System.out.println("arguments: "+obj);
        }
        Object retVal = proceedingJoinPoint.proceed(args);
        return retVal;
    }
}
