package com.web.business.system.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.template.TemplateAction;
import com.web.api.core.action.template.annotation.TemplateEntity;
import com.web.api.core.action.template.annotation.TemplateService;
import com.web.api.core.exception.AjaxException;
import com.web.api.core.global.Constant;
import com.web.api.core.utils.BaseUtils;
import com.web.api.core.utils.JsonUtils;
import com.web.business.system.entity.DeptEntity;
import com.web.business.system.service.DeptService;

@Menu(menuid = "1001")
public class DeptAction extends TemplateAction {

	private Logger logger = LoggerFactory.getLogger(getClass());
	
	private static final long serialVersionUID = 1L;

    @Autowired
    @TemplateService
    private DeptService deptService;

    @TemplateEntity
    private DeptEntity deptEntity;
    
	public DeptAction() {
		this.setGoJsp("/web/business/system/dept/form.jsp");
	}

    public DeptService getDeptService() {
        return deptService;
    }

    public void setDeptService(DeptService deptService) {
        this.deptService = deptService;
    }

    public DeptEntity getDeptEntity() {
        return deptEntity;
    }

    public void setDeptEntity(DeptEntity deptEntity) {
        this.deptEntity = deptEntity;
    }

	/**
	 * 修改页面, 选择上级节点的 Action
	 * @throws IOException 
	 */
	public void combobox() throws IOException {
		List<Map<String, Object>> list = deptService.getComboBox();
		String menuJson = JsonUtils.getTreeJsonString(list);

		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.println(menuJson);
		out.flush();
		out.close();
	}

	@Override
	public String save() {
		String modifyid = "" + deptEntity.getId(); 
		String comboboxid = "" +  deptEntity.getPid();
		
		String message = deptService.validatedParent(modifyid, comboboxid);
		if (BaseUtils.isNotEmpty(message)) {
			JSONObject jsonObject = new JSONObject();
			jsonObject.accumulate("info", "不能选择 [" + message + "] 作为当前上级部门,请更换!");
			jsonObject.accumulate("status", "n");
			this.setResultJson(jsonObject);
			
			return Constant.VALIDATED;
		}

		return super.save();
	}
	
	@Override
	public String delete() {
		String ids = this.getSelectid();
		try {
			for (String id : ids.split(",")) {
				int j = deptService.validatedDelete(id);
				if (j > 0) {
					String error = "不能删除含有下级部门的记录, 删除失败!"; 
					logger.error(error);
					throw new AjaxException(error);
				}
			}
			
			this.setResultJson(this.getTemplateService().deleteById(this.getSelectid()));
		} catch (Exception e) {
			throw new AjaxException(e);
		}
		
		return Constant.ENTER;
	}
	
	@Override
	public String list() {
		Map<String, Object> sqlParam = extendPortal.builderSearchAndOrderHashMap(deptEntity, "id", Constant.DESC);
		JSONObject jsonObject = this.getTemplateService().list(sqlParam);
		this.setListJson(jsonObject);
		return Constant.LIST;
	}

}
