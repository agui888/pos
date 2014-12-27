package com.web.business.system.service.impl;

import java.util.List;
import java.util.Map;

import com.web.business.system.dao.OracleDao;
import com.web.business.system.service.OracleService;

public class OracleServiceImpl implements OracleService {
	
	private OracleDao oracleDao;
	
	public OracleDao getOracleDao() {
		return oracleDao;
	}

	public void setOracleDao(OracleDao oracleDao) {
		this.oracleDao = oracleDao;
	}

	@Override
	public void execPurge() {
		oracleDao.execPurge();
	}
	
	@Override
	public String getBlock() {
		return oracleDao.getBlock();
	}
	
	@Override
	public String getProcesses() {
		return oracleDao.getProcesses();
	}
	
	@Override
	public String getCount(String tableName) {
		return oracleDao.getCount(tableName);
	}
	
	@Override
	public List<Map<String, Object>> getOracleVersion() {
		return oracleDao.getOracleVersion();
	}
	
	@Override
	public String oracleUser() {
		return oracleDao.oracleUser();
	}
	
	@Override
	public List<Map<String, Object>> getOracleUserTableSpace() {
		return oracleDao.getOracleUserTableSpace();
	}
	
	@Override
	public List<Map<String, Object>> getOracleUserRolePrivs() {
		return oracleDao.getOracleUserRolePrivs();
	}
	
	@Override
	public List<Map<String, Object>> getOracleUserSysPrivs() {
		return oracleDao.getOracleUserSysPrivs();
	}
	
	@Override
	public List<Map<String, Object>> getOracleTableSpace() {
		return oracleDao.getOracleTableSpace();
	}
	
	@Override
	public List<Map<String, Object>> getOracleFileSpace() {
		return oracleDao.getOracleFileSpace();
	}
	
	@Override
	public List<Map<String, Object>> getOracleTableSize() {
		return oracleDao.getOracleTableSize();
	}
	
	@Override
	public List<Map<String, Object>> getOracleSession() {
		return oracleDao.getOracleSession();
	}
	
	@Override
	public List<Map<String, Object>> getOracleParameter() {
		return oracleDao.getOracleParameter();
	}
	
	@Override
	public List<Map<String, Object>> getOraclePGA() {
		return oracleDao.getOraclePGA();
	}
	
	@Override
	public List<Map<String, Object>> getOracleSGA() {
		return oracleDao.getOracleSGA();
	}
	
}
