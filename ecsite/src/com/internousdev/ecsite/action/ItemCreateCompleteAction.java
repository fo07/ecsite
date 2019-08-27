package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemCreateCompleteDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemCreateCompleteAction extends ActionSupport implements SessionAware {

//	private String itemName;
//	private String itemPrice;
//	private String itemStock;
	private Map<String, Object> session;
	public ItemCreateCompleteDAO dao = new ItemCreateCompleteDAO();

	public String execute() throws SQLException {
		dao.createItem(
				session.get("itemName").toString(),
				session.get("itemPrice").toString(),
				session.get("itemStock").toString());
		return SUCCESS;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
}
