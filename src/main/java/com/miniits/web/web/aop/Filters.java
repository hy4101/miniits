package com.miniits.web.web.aop;

import java.lang.annotation.*;

/**
 * Created by wq on 2017/4/5.
 */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
@Inherited
public @interface Filters {
    String[] name() default "";
}
