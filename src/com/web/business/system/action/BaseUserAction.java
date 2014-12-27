/**
 * author: 谢少华
 * 
 * date: 2014-06-23 10:04
 */
package com.web.business.system.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.api.core.action.annotation.Menu;
import com.web.api.core.action.template.TemplateAction;
import com.web.api.core.action.template.annotation.TemplateEntity;
import com.web.api.core.action.template.annotation.TemplateService;
import com.web.api.core.exception.ExistsException;
import com.web.api.core.global.Constant;
import com.web.api.core.utils.BaseUtils;
import com.web.api.core.utils.JsonUtils;
import com.web.business.system.entity.BaseUserEntity;
import com.web.business.system.entity.PositionEntity;
import com.web.business.system.entity.UserEntity;
import com.web.business.system.service.BaseRoleService;
import com.web.business.system.service.BaseUserService;
import com.web.business.system.service.PositionService;

@Menu(menuid = "1003,2003")
public class BaseUserAction extends TemplateAction {

	private static final long serialVersionUID = 1L;
	
	
	private static String OPENPASSWORD = "openpassword";
	
	private static String SAVEPASSWORD = "savepassword";
	
	
	private static String MYOPENPASSWORD = "myopenpassword";
	
	private static String MYSAVEPASSWORD = "mysavepassword";
	
	
	private static String MYOPENINFORMATION = "myopeninformation";
	
	private static String MYSAVEINFORMATION = "mysaveinformation";
	
	@Autowired
	@TemplateService
	private BaseUserService baseUserService;
	
	@TemplateEntity
	private BaseUserEntity baseUserEntity;

	@Autowired
	private BaseRoleService baseRoleService;
	
	@Autowired
	private PositionService positionService;
	
	private List<PositionEntity> positionList;
	
	public BaseUserAction() {
		this.setGoListJsp("/web/business/system/user/base/list.jsp");
		this.setGoEditJsp("/web/business/system/user/base/edit.jsp");
	}
	
	public List<PositionEntity> getPositionList() {
		return positionList;
	}

	public void setPositionList(List<PositionEntity> positionList) {
		this.positionList = positionList;
	}

	public PositionService getPositionService() {
		return positionService;
	}

	public void setPositionService(PositionService positionService) {
		this.positionService = positionService;
	}

	public BaseUserService getBaseUserService() {
		return baseUserService;
	}

	public void setBaseUserService(BaseUserService baseUserService) {
		this.baseUserService = baseUserService;
	}

	public BaseUserEntity getBaseUserEntity() {
		return baseUserEntity;
	}

	public void setBaseUserEntity(BaseUserEntity baseUserEntity) {
		this.baseUserEntity = baseUserEntity;
	}

	public BaseRoleService getBaseRoleService() {
		return baseRoleService;
	}

	public void setBaseRoleService(BaseRoleService baseRoleService) {
		this.baseRoleService = baseRoleService;
	}

	@Override
	public void instance() {
		super.instance();
		this.setDefaultSortOrder("t1.colid", Constant.ASC);
    	request.setAttribute("roleEntityList", baseRoleService.getEntityList());
    	positionList = positionService.getEntityList();
    	
    	UserEntity user = (UserEntity) session.getAttribute(Constant.LOGINSESSION);
    	if (baseUserEntity == null)
    		baseUserEntity = new BaseUserEntity();
    	
    	baseUserEntity.setCreateuserid(user.getId()); 
	}
	
	@Override
    public String save() {
		this.setGoJsp(getGoEditJsp());
		
		String password = baseUserEntity.getPassword();
		if (BaseUtils.isEmpty(password)) {
			password = BaseUtils.getMD5Str(baseUserEntity.getUserid() + "123456");
			baseUserEntity.setPassword(password);
		}
		return super.save();
	}
    
    /**
	 * 强制修改密码
	 * @return
	 */
	public String password() {
		String save = request.getParameter("save");
		
		if (BaseUtils.isEmpty(save)) {
			super.view();
			return OPENPASSWORD;
		} else {
			JSONObject jsonObject = new JSONObject();
			
			try {
				String password = BaseUtils.getMD5Str(baseUserEntity.getUserid() + baseUserEntity.getPassword());
				baseUserEntity.setPassword(password);
				String id = this.getTemplateService().save(this.getEntityClass());
				if (id != null) {
					jsonObject.accumulate("status", "y");
				} else {
					jsonObject.accumulate("status", "n");
				}
			} catch (ExistsException e) {
				jsonObject.accumulate("status", "n");
			}
			
			this.setResultJson(jsonObject);
			return SAVEPASSWORD;
		}
	}
	
    /**
	 * 修改登录用户的密码
	 * @return
	 */
	public String mypassword() {
		String save = request.getParameter("save");
		
		if (BaseUtils.isEmpty(save)) {
			super.view();
			return MYOPENPASSWORD;
		} else {
			JSONObject jsonObject = new JSONObject();
			
			try {
				// 验证旧密码
				String oldpassword = request.getParameter("oldpassword");
				BaseUserEntity ue = this.getBaseUserService().login(baseUserEntity.getUserid(), oldpassword);
				if (BaseUtils.isNotEmpty(ue.getMessage())) {
					jsonObject.accumulate("info", "旧密码不正确!");
					jsonObject.accumulate("status", "n");
					this.setResultJson(jsonObject);
					return MYSAVEPASSWORD;
				}
					
				// 保存新密码
				String password = BaseUtils.getMD5Str(baseUserEntity.getUserid() + baseUserEntity.getPassword());
				baseUserEntity.setPassword(password);
				String id = this.getTemplateService().save(this.getEntityClass());
				if (id != null) {
					jsonObject.accumulate("info", "密码修改成功!");
					jsonObject.accumulate("status", "y");
				} else {
					jsonObject.accumulate("info", "密码修改失败!");
					jsonObject.accumulate("status", "n");
				}
			} catch (ExistsException e) {
				jsonObject.accumulate("info", "系统错误,密码修改失败!");
				jsonObject.accumulate("status", "n");
			}
			
			this.setResultJson(jsonObject);
			return MYSAVEPASSWORD;
		}
	}
	
    /**
	 * 修改我的信息
	 * @return
	 * @throws DataException
	 */
	public String myinformation() {
		String save = request.getParameter("save");
		if (BaseUtils.isEmpty(save)) {
			super.view();
			return MYOPENINFORMATION;
		} else {
			
			JSONObject jsonObject = new JSONObject();
			try {
				String id = this.getTemplateService().save(this.getEntityClass());
				if (id != null) {
					jsonObject.accumulate("info", "保存成功!");
					jsonObject.accumulate("status", "y");
				} else {
					jsonObject.accumulate("info", "保存失败!");
					jsonObject.accumulate("status", "n");
				}
			} catch (Exception e) {
				jsonObject.accumulate("info", "系统错误,保存失败!");
				jsonObject.accumulate("status", "n");
			}
			
			this.setResultJson(jsonObject);
			
			return MYSAVEINFORMATION;
		}
	}
	
	/**
	 * 用户部门选择
	 * @throws IOException
	 */
	public void deptuser() throws IOException {
		List<Map<String, Object>> list = baseUserService.getDeptUserComboBox();
		String menuJson = JsonUtils.getTreeJsonString(list);
		
		HttpServletResponse response = ServletActionContext.getResponse();  
	    response.setContentType("text/html;charset=utf-8");  
	    PrintWriter out = response.getWriter();  
	    out.println(menuJson);
	    out.flush();
	    out.close();
	}
	
}
