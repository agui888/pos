/**
 * author: 谢少华
 * 
 * date: 2014-12-04 09:12
 */
package com.guime.base.service.impl;

import java.util.List;
import java.util.Map;

import com.guime.base.dao.CityDao;
import com.guime.base.service.CityService;
import com.web.api.core.service.template.impl.TemplateServiceImpl;

public class CityServiceImpl extends TemplateServiceImpl
        implements CityService { 

    private CityDao cityDao;

    public CityDao getCityDao() {
        return cityDao;
    }

    public void setCityDao(CityDao cityDao) {
        this.cityDao = cityDao;
    }
    
    @Override
	public List<Map<String, Object>> getComboBox() {
		return cityDao.getComboBox();
	}

	@Override
	public String validatedParent(String modifyid, String comboboxid) {
		return cityDao.validatedParent(modifyid, comboboxid);
	}

	@Override
	public int validatedDelete(String selectid) {
		return cityDao.validatedDelete(selectid);
	}

}