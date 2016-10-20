package com.miniits.web.user.article.dao;

import com.miniits.web.user.article.model.Article;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by wq on 2016/10/20.
 */
public interface IArticleRepository extends PagingAndSortingRepository<Article,String> {
}
