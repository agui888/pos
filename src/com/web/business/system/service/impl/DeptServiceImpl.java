/**
 * author: 谢少华
 * 
 * date: 2014-06-20 16:39
 */
package com.web.business.system.service.impl;

import java.util.List;
import java.util.Map;

import com.web.api.core.service.template.impl.TemplateServiceImpl;
import com.web.business.system.dao.DeptDao;
import com.web.business.system.service.DeptService;

public class DeptServiceImpl extends TemplateServiceImpl
        implements DeptService { 

    private DeptDao deptDao;

    public DeptDao getDeptDao() {
        return deptDao;
    }

    public void setDeptDao(DeptDao deptDao) {
        this.deptDao = deptDao;
    }

	@Override
	public List<Map<String, Object>> getComboBox() {
		return deptDao.getComboBox();
	}

	@Override
	public String validatedParent(String modifyid, String comboboxid) {
		return deptDao.validatedParent(modifyid, comboboxid);
	}

	@Override
	public int validatedDelete(String selectid) {
		return deptDao.validatedDelete(selectid);
	}

}
