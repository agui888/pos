package com.web.api.core.tag.menu;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

import com.opensymphony.xwork2.ActionContext;
import com.web.api.core.utils.BaseUtils;
import com.web.business.system.entity.MenuEntity;

public class ActiveMenu extends SimpleTagSupport {
	
	public static String activeOpen = "";
	
	public static String active = "";

	public static String tempId = "";
			
	private String menuid;
	
	private List<MenuEntity> list;
	
	public String getMenuid() {
		return menuid;
	}

	public void setMenuid(String menuid) {
		this.menuid = menuid;
	}
	
	public List<MenuEntity> getList() {
		return list;
	}

	public void setList(List<MenuEntity> list) {
		this.list = list;
	}
	
	public void doTag() throws JspTagException,IOException {
		String path = (String) ActionContext.getContext().getSession().get("path");
		StringBuffer sb = builderMenu(list, path, menuid);
		getJspContext().getOut().write(sb.toString());
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public StringBuffer builderMenu(List<MenuEntity> dataList, String path, String menuid) {
		// 节点列表（散列表，用于临时存储节点对象）
		HashMap nodeList = new HashMap();

		// 根节点
		List<MenuNode> rootList = new ArrayList<MenuNode>();

		// 根据结果集构造节点列表（存入散列表）
		for (MenuEntity me : dataList) {
			MenuNode node = new MenuNode();
			node.id = me.getId().toString();
			node.menu = me.getMenu();
			node.sid = me.getSid().toString();
			node.url = me.getUrl();
			node.ico = me.getIco();
			node.dirico = me.getDirico();
			node.colid = me.getColid().toString();
			nodeList.put(node.id, node);
			
			if (node.sid == null || node.sid.equals("0")) {
				MenuNode root = node;
				rootList.add(root);
			} else {
				MenuNode tempNode = ((MenuNode) nodeList.get(node.sid));
				tempNode.addChild(node);
			}
			
		}

		// 构造无序的多叉树
		/*
		Set entrySet = nodeList.entrySet();
		for (Iterator it = entrySet.iterator(); it.hasNext();) {
			MenuNode node = (MenuNode) ((Map.Entry) it.next()).getValue();
			if (node.sid == null || node.sid.equals("0")) {
				MenuNode root = node;
				rootList.add(root);
			} else {
				MenuNode tempNode = ((MenuNode) nodeList.get(node.sid));
				tempNode.addChild(node);
			}
		}
		*/
		
		// 输出无序的树形菜单的JSON字符串
		// System.out.println(root.toString());

		// 对多叉树进行横向排序
		// root.sortChildren();

		StringBuffer result = new StringBuffer(1000);
		// for (int i = rootList.size() - 1; i >= 0; i--) {
		for (int i = 0; i < rootList.size(); i++) {
			MenuNode node = (MenuNode) rootList.get(i);
			node.sortChildren();
			
			ActiveMenu.active     = "";
			ActiveMenu.activeOpen = "";
			
			if ((i == 0) && BaseUtils.isEmpty(menuid))
				ActiveMenu.activeOpen = "active open";
			
			result.append(node.builderGroupMenu(true, path, menuid));
		}

		return result;
	}

}

/**
 * 节点类
 */
class MenuNode {

	public String id;

	public String sid;

	public String menu;
	
	public String url;
	
	public String ico; 
	
	public String dirico;
	
	public String colid;

	private MenuChildren children = new MenuChildren();

	// 先序遍历，拼接JSON字符串
	public StringBuffer builderGroupMenu(boolean isRoot, String path, String menuid) {
		StringBuffer sb = new StringBuffer(100);
		
		if (BaseUtils.isEmpty(url)) {  
			// 主菜单
			sb.append("    <a href='#' class='dropdown-toggle'>");
			if (BaseUtils.isEmpty(dirico)) {
				sb.append("       <i class='menu-icon fa fa-list'></i>");
				sb.append("       <span class='menu-text'>" + menu + "</span>");
			} else {
				sb.append("       <i class='menu-icon fa'></i>");
				sb.append("       <img src='" + path + dirico + "' />");
				sb.append("       " + menu);
			}
			sb.append("       <b class='arrow fa fa-angle-down'></b>");
			sb.append("    </a>");
		} else {  
			// 子菜单
			sb.append("    <a href='" + path + url + "'>");
			sb.append("        <i class='menu-icon fa fa-caret-right'></i>");
			sb.append("        <img src='" + path + ico + "' />");
			sb.append("        " + menu);
			sb.append("    </a>");
			sb.append("    <b class='arrow'></b>");
		}
		
		// 递归所有子级菜单
		if (children != null && children.getSize() != 0) {
			sb.append("    <b class='arrow'></b>");
			sb.append("    <ul class='submenu'>");
			String temp = children.builderDetailMenu(path, menuid).toString();
			sb.append(temp);
			sb.append("    </ul>");
		}
		
		// 补头和尾
		if (isRoot)
			sb.insert(0, "<li class='" + ActiveMenu.activeOpen + "'>");
		else
			if (ActiveMenu.tempId.equals(id))
				sb.insert(0, "<li class='active copen'>");
			else
				sb.insert(0, "<li class='" + ActiveMenu.active + "'>");
		sb.append("</li>");
		
		return sb;
	}

	// 兄弟节点横向排序
	public void sortChildren() {
		if (children != null && children.getSize() != 0) {
			children.sortChildren();
		}
	}

	// 添加孩子节点
	public void addChild(MenuNode node) {
		this.children.addChild(node);
	}
}

/**
 * 孩子列表类
 */
class MenuChildren {
	@SuppressWarnings("rawtypes")
	private List list = new ArrayList();

	public int getSize() {
		return list.size();
	}

	@SuppressWarnings("unchecked")
	public void addChild(MenuNode node) {
		list.add(node);
	}

	// 拼接孩子节点的JSON字符串
	@SuppressWarnings("rawtypes")
	public StringBuffer builderDetailMenu(String path, String menuid) {
		StringBuffer sb = new StringBuffer();
		for (Iterator it = list.iterator(); it.hasNext();) {
			MenuNode mn = (MenuNode) it.next();
			ActiveMenu.active = "";
			if (mn.id.equals(menuid)) {
				ActiveMenu.tempId     = mn.sid;
				ActiveMenu.active     = "active";
				ActiveMenu.activeOpen = "active open";
			}
			sb.append(mn.builderGroupMenu(false, path, menuid));
		}
		return sb;
	}

	// 孩子节点排序
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void sortChildren() {
		// 对本层节点进行排序
		// 可根据不同的排序属性，传入不同的比较器，这里传入ID比较器
		Collections.sort(list, new MenuNodeIDComparator());
		// 对每个节点的下一层节点进行排序
		for (Iterator it = list.iterator(); it.hasNext();) {
			((MenuNode) it.next()).sortChildren();
		}
	}
}

/**
 * 节点比较器
 */
@SuppressWarnings("rawtypes")
class MenuNodeIDComparator implements Comparator {
	
	// 按照节点编号比较
	public int compare(Object o1, Object o2) {
		float j1 = Float.parseFloat(((MenuNode) o1).colid);
		float j2 = Float.parseFloat(((MenuNode) o2).colid);

		return (j1 < j2 ? -1 : (j1 == j2 ? 0 : 1));
	}
	
}
