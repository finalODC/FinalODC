package com.ohdogcat.odc.hospital.model.vo;

public class Medicine {

	
	private int dId;
	private String mName;
	private String mInfo;
	private String mCount;
	
	public Medicine() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Medicine(int dId, String mName, String mInfo, String mCount) {
		super();
		this.dId = dId;
		this.mName = mName;
		this.mInfo = mInfo;
		this.mCount = mCount;
	}
	
	public int getdId() {
		return dId;
	}

	public void setdId(int dId) {
		this.dId = dId;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getmInfo() {
		return mInfo;
	}

	public void setmInfo(String mInfo) {
		this.mInfo = mInfo;
	}

	public String getmCount() {
		return mCount;
	}

	public void setmCount(String mCount) {
		this.mCount = mCount;
	}

	@Override
	public String toString() {
		return "Medicine [dId=" + dId + ", mName=" + mName + ", mInfo=" + mInfo + ", mCount=" + mCount + "]";
	}
	
	
	
}
