package com.web.api.core.dialect;

import java.sql.Connection;
import java.util.Map;
import java.util.Properties;

import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.plugin.Intercepts;
import org.apache.ibatis.plugin.Invocation;
import org.apache.ibatis.plugin.Plugin;
import org.apache.ibatis.plugin.Signature;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.reflection.factory.DefaultObjectFactory;
import org.apache.ibatis.reflection.factory.ObjectFactory;
import org.apache.ibatis.reflection.wrapper.DefaultObjectWrapperFactory;
import org.apache.ibatis.reflection.wrapper.ObjectWrapperFactory;
import org.apache.ibatis.scripting.defaults.DefaultParameterHandler;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.RowBounds;
import org.apache.log4j.Logger;

import com.web.api.core.dialect.type.DB2Dialect;
import com.web.api.core.dialect.type.Mssql12Dialect;
import com.web.api.core.dialect.type.Mssql58Dialect;
import com.web.api.core.dialect.type.MysqlDialect;
import com.web.api.core.dialect.type.OracleDialect;

@Intercepts({@Signature(type = StatementHandler.class, method = "prepare", args = {Connection.class})})
public class PaginationInterceptor implements Interceptor {
	
    // 日志对象
    protected static Logger log = Logger.getLogger(PaginationInterceptor.class);

    private static final ObjectFactory DEFAULT_OBJECT_FACTORY = new DefaultObjectFactory();
    
    private static final ObjectWrapperFactory DEFAULT_OBJECT_WRAPPER_FACTORY = new DefaultObjectWrapperFactory();  
    
	@SuppressWarnings("rawtypes")
	@Override
    public Object intercept(Invocation invocation) throws Throwable {
        StatementHandler statementHandler = (StatementHandler) invocation.getTarget();
        MetaObject metaStatementHandler =  MetaObject.forObject(statementHandler, DEFAULT_OBJECT_FACTORY, DEFAULT_OBJECT_WRAPPER_FACTORY);

        RowBounds rowBounds = (RowBounds) metaStatementHandler.getValue("delegate.rowBounds");
        if (rowBounds == null || rowBounds == RowBounds.DEFAULT) {
            return invocation.proceed();
        }

        DefaultParameterHandler defaultParameterHandler = (DefaultParameterHandler)metaStatementHandler.getValue("delegate.parameterHandler");    
        Map parameterMap = (Map)defaultParameterHandler.getParameterObject();
        Object sort = null;    
    	Object order = null;
    	Object rulesql = null;
        if (parameterMap != null) {
        	sort = parameterMap.get("_sort");    
        	order = parameterMap.get("_order");
        	rulesql = parameterMap.get("_rulesql");
        }

        String originalSql = (String) metaStatementHandler.getValue("delegate.boundSql.sql");
        
        if (rulesql != null) {
        	originalSql = originalSql + rulesql;	
        }
        
        if(sort != null && order != null){    
            originalSql = originalSql + " order by " + sort + " " + order;    
        }
        
        Configuration configuration = (Configuration) metaStatementHandler.getValue("delegate.configuration");

        Dialect.Type databaseType = null;
        try {
            databaseType = Dialect.Type.valueOf(configuration.getVariables().getProperty("dialect").toUpperCase());
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (databaseType == null) {
            throw new RuntimeException("the value of the dialect property in configuration.xml is not defined : " + configuration.getVariables().getProperty("dialect"));
        }
        
        Dialect dialect = null;
        switch (databaseType) {
        case ORACLE:
            dialect = new OracleDialect();
            break;
        case DB2:
            dialect = new DB2Dialect();
            break;
        case MYSQL:
            dialect = new MysqlDialect();
            break;
        case MSSQL58:
            dialect = new Mssql58Dialect();
            break;
        case MSSQL12:
            dialect = new Mssql12Dialect();
            break;
        default:
            break;
        }

        String sql = null;
        if (rowBounds.getOffset() == 0 && rowBounds.getLimit() == Integer.MAX_VALUE) {
        	sql = originalSql;
        } else {
        	sql = dialect.getLimitString(originalSql, rowBounds.getOffset(), rowBounds.getLimit());
        }
        metaStatementHandler.setValue("delegate.boundSql.sql", sql);
        metaStatementHandler.setValue("delegate.rowBounds.offset", RowBounds.NO_ROW_OFFSET);
        metaStatementHandler.setValue("delegate.rowBounds.limit", RowBounds.NO_ROW_LIMIT);
        if (log.isDebugEnabled()) {
            BoundSql boundSql = statementHandler.getBoundSql();
            log.debug("生成分页SQL : " + boundSql.getSql());
        }
        return invocation.proceed();
    }

    @Override
    public Object plugin(Object target) {
        return Plugin.wrap(target, this);
    }

    @Override
    public void setProperties(Properties arg0) {

    }

}