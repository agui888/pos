/**
 * author: 谢少华
 * 
 * date: 2014-06-17 16:03
 */
package com.web.business.system.service.impl;

import com.web.api.core.service.template.impl.TemplateServiceImpl;
import com.web.business.system.dao.DictDao;
import com.web.business.system.service.DictService;

public class DictServiceImpl extends TemplateServiceImpl
        implements DictService { 

    private DictDao dictDao;

    public DictDao getDictDao() {
        return dictDao;
    }

    public void setDictDao(DictDao dictDao) {
        this.dictDao = dictDao;
    }

}