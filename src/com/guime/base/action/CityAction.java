/**
 * author: 谢少华
 * 
 * date: 2014-12-04 09:12
 */
package com.guime.base.action;

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
import com.guime.base.entity.CityEntity;
import com.guime.base.service.CityService;

@Menu(menuid = "5002")
public class CityAction extends TemplateAction {

	private Logger logger = LoggerFactory.getLogger(getClass());
	
    private static final long serialVersionUID = 1L;

    @Autowired
    @TemplateService
    private CityService cityService;

    @TemplateEntity
    private CityEntity cityEntity;
    
    public CityAction() {
    	this.setGoJsp("/guime/base/city/form.jsp");
    }

    public CityService getCityService() {
        return cityService;
    }

    public void setCityService(CityService cityService) {
        this.cityService = cityService;
    }

    public CityEntity getCityEntity() {
        return cityEntity;
    }

    public void setCityEntity(CityEntity cityEntity) {
        this.cityEntity = cityEntity;
    }
    
    /**
	 * 修改页面, 选择上级节点的 Action
	 * @throws IOException 
	 */
	public void combobox() throws IOException {
		List<Map<String, Object>> list = cityService.getComboBox();
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
		String modifyid = "" + cityEntity.getId(); 
		String comboboxid = "" +  cityEntity.getPid();
		
		String message = cityService.validatedParent(modifyid, comboboxid);
		if (BaseUtils.isNotEmpty(message)) {
			JSONObject jsonObject = new JSONObject();
			jsonObject.accumulate("info", "不能选择 [" + message + "] 作为当前上级地区,请更换!");
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
				int j = cityService.validatedDelete(id);
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
		Map<String, Object> sqlParam = extendPortal.builderSearchAndOrderHashMap(cityEntity, "colid", Constant.ASC);
		JSONObject jsonObject = this.getTemplateService().list(sqlParam);
		this.setListJson(jsonObject);
		return Constant.LIST;
	}

}