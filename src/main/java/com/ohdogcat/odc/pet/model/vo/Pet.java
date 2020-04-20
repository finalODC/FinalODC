package com.ohdogcat.odc.pet.model.vo;

import java.sql.Date;

public class Pet {
	int pid;

	String pCode;
	String pName;
	int ref_mid;
	String pSpecies;//개 고양이
	String breed;//종
	String pGender;
	String pBirth;
	char neutralYN;
	double pWeight;
	String pUniqueness;
	Date p_Create_Date;
	Date p_Modify_Date;
	String pStatus;
	
	public Pet() {
		super();
	}
	
	public Pet(int pid, String pCode, String pName, int ref_mid, String pSpecies, String breed, String pGender,
			String pBirth, char neutralYN, double pWeight, String pUniqueness, Date p_Create_Date, Date p_Modify_Date,
			String pStatus) {
		super();
		this.pid = pid;
		this.pCode = pCode;
		this.pName = pName;
		this.ref_mid = ref_mid;
		this.pSpecies = pSpecies;
		this.breed = breed;
		this.pGender = pGender;
		this.pBirth = pBirth;
		this.neutralYN = neutralYN;
		this.pWeight = pWeight;
		this.pUniqueness = pUniqueness;
		this.p_Create_Date = p_Create_Date;
		this.p_Modify_Date = p_Modify_Date;
		this.pStatus = pStatus;
	}

	public Pet(int pid, String pCode, String pName, int ref_mid, String pSpecies, String breed, String pGender,
			String pBirth, char neutralYN, String pUniqueness, Date p_Create_Date, Date p_Modify_Date, String pStatus) {
		super();
		this.pid = pid;
		this.pCode = pCode;
		this.pName = pName;
		this.ref_mid = ref_mid;
		this.pSpecies = pSpecies;
		this.breed = breed;
		this.pGender = pGender;
		this.pBirth = pBirth;
		this.neutralYN = neutralYN;
		this.pUniqueness = pUniqueness;
		this.p_Create_Date = p_Create_Date;
		this.p_Modify_Date = p_Modify_Date;
		this.pStatus = pStatus;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getpCode() {
		return pCode;
	}

	public void setpCode(String pCode) {
		this.pCode = pCode;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getRef_mid() {
		return ref_mid;
	}

	public void setRef_mid(int ref_mid) {
		this.ref_mid = ref_mid;
	}

	public String getpSpecies() {
		return pSpecies;
	}

	public void setpSpecies(String pSpecies) {
		this.pSpecies = pSpecies;
	}

	public String getBreed() {
		return breed;
	}

	public void setBreed(String breed) {
		this.breed = breed;
	}

	public String getpGender() {
		return pGender;
	}

	public void setpGender(String pGender) {
		this.pGender = pGender;
	}

	public String getpBirth() {
		return pBirth;
	}

	public void setpBirth(String pBirth) {
		this.pBirth = pBirth;
	}

	public char getNeutralYN() {
		return neutralYN;
	}
	public double getpWeight() {
		return pWeight;
	}
	
	public void setpWeight(double pWeight) {
		this.pWeight = pWeight;
	}

	public void setNeutralYN(char neutralYN) {
		this.neutralYN = neutralYN;
	}

	public String getpUniqueness() {
		return pUniqueness;
	}

	public void setpUniqueness(String pUniqueness) {
		this.pUniqueness = pUniqueness;
	}

	public Date getP_Create_Date() {
		return p_Create_Date;
	}

	public void setP_Create_Date(Date p_Create_Date) {
		this.p_Create_Date = p_Create_Date;
	}

	public Date getP_Modify_Date() {
		return p_Modify_Date;
	}

	public void setP_Modify_Date(Date p_Modify_Date) {
		this.p_Modify_Date = p_Modify_Date;
	}

	public String getpStatus() {
		return pStatus;
	}

	public void setpStatus(String pStatus) {
		this.pStatus = pStatus;
	}

	@Override
	public String toString() {
		return "Pet [pid=" + pid + ", pCode=" + pCode + ", pName=" + pName + ", ref_mid=" + ref_mid + ", pSpecies="
				+ pSpecies + ", breed=" + breed + ", pGender=" + pGender + ", pBirth=" + pBirth + ", neutralYN="
				+ neutralYN + ",pWeight"+pWeight+", pUniqueness=" + pUniqueness + ", p_Create_Date=" + p_Create_Date + ", p_Modify_Date="
				+ p_Modify_Date + ", pStatus=" + pStatus + "]";
	}
	
	
}
