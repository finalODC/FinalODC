package com.ohdogcat.odc.qna.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Qna {
	private int qId;
	private String qWriter;
	private String qTitle;
	private String qContent;
	private String qFile;
	private Date qDate;
	private String qStatus;
	private QnaReply qnaRe;
	
	public Qna() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Qna(String qWriter, String qTitle,String qContent, String qFile) {
		super();
		this.qWriter = qWriter;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.qFile = qFile;
	}
	public Qna(int qId, String qWriter, String qTitle,String qContent, String qFile, Date qDate, String qStatus,QnaReply qnaRe) {
		super();
		this.qId = qId;
		this.qWriter = qWriter;
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.qFile = qFile;
		this.qDate = qDate;
		this.qStatus = qStatus;
		this.qnaRe= qnaRe;
	}
	public QnaReply getQnaRe() {
		return qnaRe;
	}
	public void setQnaRe(QnaReply qnaRe) {
		this.qnaRe = qnaRe;
	}
	public int getqId() {
		return qId;
	}
	public void setqId(int qId) {
		this.qId = qId;
	}
	public String getqWriter() {
		return qWriter;
	}
	public void setqWriter(String qWriter) {
		this.qWriter = qWriter;
	}
	public String getqTitle() {
		return qTitle;
	}
	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}
	public String getqContent() {
		return qContent;
	}
	public void setqContent(String qContent) {
		this.qContent = qContent;
	}
	public String getqFile() {
		return qFile;
	}
	public void setqFile(String qFile) {
		this.qFile = qFile;
	}
	public Date getqDate() {
		return qDate;
	}
	public void setqDate(Date qDate) {
		this.qDate = qDate;
	}
	public String getqStatus() {
		return qStatus;
	}
	public void setqStatus(String qStatus) {
		this.qStatus = qStatus;
	}
	@Override
	public String toString() {
		return "Qna [qId=" + qId + ", qWriter=" + qWriter + ", qTitle=" + qTitle + "qContent"+qContent+", qFile=" + qFile + ", qDate="
				+ qDate + ", qStatus=" + qStatus + "qnaRe"+qnaRe+"]";
	}
	
	
}
