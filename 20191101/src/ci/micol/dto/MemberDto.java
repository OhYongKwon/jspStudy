package ci.micol.dto;

import java.util.Date;

public class MemberDto {
	private String id;
	private String name;
	private String password;
	private String grant;
	private Date enterDate;
	private String addr;
	
	public MemberDto() {

	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getGrant() {
		return grant;
	}

	public void setGrant(String grant) {
		this.grant = grant;
	}

	public Date getEnterDate() {
		return enterDate;
	}

	public void setEnterDate(Date enterDate) {
		this.enterDate = enterDate;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
	
	
}
