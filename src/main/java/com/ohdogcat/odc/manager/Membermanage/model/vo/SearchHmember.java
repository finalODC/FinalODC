package com.ohdogcat.odc.manager.Membermanage.model.vo;

import org.springframework.stereotype.Component;

@Component
public class SearchHmember {
	private int category;
	private String search;
	
	public SearchHmember() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SearchHmember(int category, String search) {
		super();
		this.category = category;
		this.search = search;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	@Override
	public String toString() {
		return "SrearchHmember [category=" + category + ", search=" + search + "]";
	}
	
	
}
