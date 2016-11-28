package com.miniits.web.web.discuss.service;

import com.miniits.commons.query.BaseJpaService;
import com.miniits.commons.utils.email.ServiceException;
import com.miniits.web.web.discuss.dao.IDiscussRepository;
import com.miniits.web.web.discuss.model.Discuss;
import com.miniits.web.web.emailvalidate.dao.IEMailValidateRepository;
import com.miniits.web.web.emailvalidate.model.EMailValidate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.ParseException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by wq on 2016/10/8.
 */

@Service
@Transactional
public class DiscussService extends BaseJpaService<Discuss,IDiscussRepository> {

    @Autowired
    private IDiscussRepository iDiscussRepository;

    public List<Discuss> findDiscussByBlogId(String blogId){
        return iDiscussRepository.findByBlogId(blogId);
    }

}