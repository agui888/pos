package com.web.business.system.service;

import java.util.List;
import java.util.Map;

public interface OracleService {

	public void execPurge();
	
	public String getBlock();
	
	public String getProcesses();
	
	public String getCount(String tableName);
	
	public List<Map<String, Object>> getOracleVersion();
	
	public String oracleUser();
	
	public List<Map<String, Object>> getOracleUserTableSpace();
	
	public List<Map<String, Object>> getOracleUserRolePrivs();
	
	public List<Map<String, Object>> getOracleUserSysPrivs();
	
	public List<Map<String, Object>> getOracleTableSpace();
	
	public List<Map<String, Object>> getOracleFileSpace();
	
	public List<Map<String, Object>> getOracleTableSize();
	
	public List<Map<String, Object>> getOracleSession();
	
	public List<Map<String, Object>> getOracleParameter();
	
	public List<Map<String, Object>> getOraclePGA();
	
	public List<Map<String, Object>> getOracleSGA();
	
}
