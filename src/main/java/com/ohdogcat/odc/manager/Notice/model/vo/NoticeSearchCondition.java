package com.ohdogcat.odc.manager.Notice.model.vo;

public class NoticeSearchCondition {
	private String sTitle;
	private String sContent;
	public NoticeSearchCondition() {
		super();
		// TODO Auto-generated constructor stub
	}
	public NoticeSearchCondition(String sTitle, String sContent) {
		super();
		this.sTitle = sTitle;
		this.sContent = sContent;
	}
	public String getsTitle() {
		return sTitle;
	}
	public void setsTitle(String sTitle) {
		this.sTitle = sTitle;
	}
	public String getsContent() {
		return sContent;
	}
	public void setsContent(String sContent) {
		this.sContent = sContent;
	}
	@Override
	public String toString() {
		return "NoticeSearchCondition [sTitle=" + sTitle + ", sContent=" + sContent + "]";
	}

	
	
}
