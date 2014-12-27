package com.web.api.core.dialect.type;

import com.web.api.core.dialect.Dialect;

public class OracleDialect extends Dialect {

	@Override
	public String getLimitString(String sql, int offset, int limit) {

		sql = sql.trim();
		StringBuffer pagingSelect = new StringBuffer(sql.length() + 100);

		pagingSelect.append("select * from ( select row_.*, rownum rowno from ( ");
		pagingSelect.append(sql);
		pagingSelect.append(" ) row_ ) where rowno >= ").append(offset).append(" and rowno <= ").append(limit);  // offset

		return pagingSelect.toString();
	}

}