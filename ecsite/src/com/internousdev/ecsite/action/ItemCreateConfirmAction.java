package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class ItemCreateConfirmAction extends ActionSupport implements SessionAware {

	private String itemName;
	private String itemPrice;
	private String itemStock;
	private String message;
	private Map<String, Object> session;

	public String execute() {

		String result = ERROR;
		if(itemName.equals("") || itemPrice.equals("") || itemStock.equals("")) {
			setMessage("未入力の項目があります。");
		} else {
			session.put("itemName", itemName);
			session.put("itemPrice", itemPrice);
			session.put("itemStock", itemStock);
			result = SUCCESS;
		}
		return result;
	}

	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(String itemPrice) {
		this.itemPrice = itemPrice;
	}
	public String getItemStock() {
		return itemStock;
	}
	public void setItemStock(String itemStock) {
		this.itemStock = itemStock;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}
	public Map<String, Object> getSession() {
		return session;
	}
}
