package com.miniits.web.user.article.service;

import com.miniits.commons.query.BaseJpaService;
import com.miniits.web.user.article.dao.IArticleRepository;
import com.miniits.web.user.article.model.Article;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by wq on 2016/10/20.
 */

@Service
@Transactional
public class ArticleService extends BaseJpaService<Article,IArticleRepository> {

}
