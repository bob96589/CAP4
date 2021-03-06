/*
 * Copyright (c) 2009-2012 International Integrated System, Inc. 
 * 11F, No.133, Sec.4, Minsheng E. Rd., Taipei, 10574, Taiwan, R.O.C.
 * All Rights Reserved.
 * 
 * Licensed Materials - Property of International Integrated System, Inc.
 * 
 * This software is confidential and proprietary information of 
 * International Integrated System, Inc. (&quot;Confidential Information&quot;).
 */

package com.iisigroup.cap.rule.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.iisigroup.cap.db.constants.SearchMode;
import com.iisigroup.cap.db.dao.SearchSetting;
import com.iisigroup.cap.db.dao.impl.GenericDaoImpl;
import com.iisigroup.cap.rule.dao.DivCtDtlDao;
import com.iisigroup.cap.rule.model.DivCtDtl;

/**
 * <pre>
 * Division Condition Details DAO Impl
 * </pre>
 * 
 * @since 2013/12/19
 * @author TimChiang
 * @version
 *          <ul>
 *          <li>2013/12/19,TimChiang,new
 *          </ul>
 */
@Repository
public class DivCtDtlDaoImpl extends GenericDaoImpl<DivCtDtl> implements DivCtDtlDao {

    @Override
    public DivCtDtl findByConditionNo(String conditionNo) {
        SearchSetting search = createSearchTemplete();
        search.addSearchModeParameters(SearchMode.EQUALS, "divCtNo", conditionNo);
        return findUniqueOrNone(search);
    }

    @Override
    public List<DivCtDtl> findCtDtlsByCtNoAndSort(String conditionNo) {
        SearchSetting search = createSearchTemplete();
        search.addSearchModeParameters(SearchMode.EQUALS, "divCtNo", conditionNo);
        search.setFirstResult(0).setMaxResults(Integer.MAX_VALUE);
        search.addOrderBy("divCtSor");
        return find(search);
    }

    @Override
    public List<DivCtDtl> findByConditionNos(String[] conditionNos) {
        SearchSetting search = createSearchTemplete();
        search.addSearchModeParameters(SearchMode.EQUALS, "divCtNo", conditionNos);
        search.setFirstResult(0).setMaxResults(Integer.MAX_VALUE);
        search.addOrderBy("divCtSor");
        return find(search);
    }

    @Override
    public DivCtDtl findByOid(String oid) {
        return find(oid);
    }

}
