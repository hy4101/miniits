package com.miniits.web.web.emailvalidate.dao;

import com.miniits.web.web.emailvalidate.model.EMailValidate;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by wq on 2016/10/8.
 */

public interface IEMailValidateRepository extends PagingAndSortingRepository<EMailValidate,String> {

    List<EMailValidate> findByEmail(@Param("email") String email);

    @Modifying
    @Query("update EMailValidate ev set ev.status =:status where ev.id =:id")
    void udate(@Param("id") String id,@Param("status") int status);
}
