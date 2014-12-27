package com.web.api.core.dialect.type;

import com.web.api.core.dialect.Dialect;

public class MysqlDialect extends Dialect {

	@Override
	public String getLimitString(String sql, int offset, int limit) {
		int i = offset - 1;
		if (i < 0)
			i = 0;
		sql = sql.trim();
		StringBuffer pagingSelect = new StringBuffer(sql.length() + 100);
		pagingSelect.append(sql);
		pagingSelect.append(" limit ").append(i).append(" , ").append(limit);

		return pagingSelect.toString();
	}

}