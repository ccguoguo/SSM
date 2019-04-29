package com.owen.entity;

public class Provider {
	//供应商
	
	private int providerID;
	private String provider_name;
	private String provider_add;
	private String provider_tel;
	private String account;
	private String email;
	
	public Provider() {
		super();
	}
	
	public Provider(int providerID) {
		super();
		this.providerID = providerID;
	}



	public Provider(int providerID, String provider_name) {
		super();
		this.providerID = providerID;
		this.provider_name = provider_name;
	}

	public Provider(String provider_name, String provider_add, String provider_tel, String account,
			String email) {
		super();
		this.provider_name = provider_name;
		this.provider_add = provider_add;
		this.provider_tel = provider_tel;
		this.account = account;
		this.email = email;
	}

	public Provider(int providerID, String provider_name, String provider_add, String provider_tel, String account,
			String email) {
		super();
		this.providerID = providerID;
		this.provider_name = provider_name;
		this.provider_add = provider_add;
		this.provider_tel = provider_tel;
		this.account = account;
		this.email = email;
	}

	@Override
	public String toString() {
		return "供应商 [供应商ID=" + providerID + ", 供应商名称=" + provider_name + ", 供应商地址="
				+ provider_add + ", 供应商电话=" + provider_tel + ", 供应商账号=" + account + ", 供应商电子邮箱=" + email + "]";
	}

	public int getProviderID() {
		return providerID;
	}

	public void setProviderID(int providerID) {
		this.providerID = providerID;
	}

	public String getProvider_name() {
		return provider_name;
	}

	public void setProvider_name(String provider_name) {
		this.provider_name = provider_name;
	}

	public String getProvider_add() {
		return provider_add;
	}

	public void setProvider_add(String provider_add) {
		this.provider_add = provider_add;
	}

	public String getProvider_tel() {
		return provider_tel;
	}

	public void setProvider_tel(String provider_tel) {
		this.provider_tel = provider_tel;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
