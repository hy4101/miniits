package com.miniits.web.user.type.service;

import com.miniits.commons.query.BaseJpaService;
import com.miniits.web.user.type.dao.IBlogTypeRepository;
import com.miniits.web.user.type.model.BlogType;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by wq on 2016/11/19.
 */
@Service
@Transactional
public class BlogTypeServcice extends BaseJpaService<BlogType,IBlogTypeRepository> {
}
