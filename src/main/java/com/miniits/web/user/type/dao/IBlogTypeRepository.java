package com.miniits.web.user.type.dao;

import com.miniits.web.user.type.model.BlogType;
import org.springframework.data.repository.PagingAndSortingRepository;

/**
 * Created by wq on 2016/11/19.
 */
public interface IBlogTypeRepository  extends PagingAndSortingRepository<BlogType,String>{
}
