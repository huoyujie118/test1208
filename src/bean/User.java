package bean;

public class User {
    private int id;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}


	public User(int id, String username, String password, String sex,
			String telephone, String address) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.sex = sex;
		this.telephone = telephone;
		this.address = address;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getSex() {
		return sex;
	}


	public void setSex(String sex) {
		this.sex = sex;
	}


	public String getTelephone() {
		return telephone;
	}


	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	private String username;
	private String password;
	private String sex;
	private String telephone;
	private String address;

	
	@Override
	public String toString() {
		return "User [userName=" + username + ", password=" + password
				+ ", sex=" + sex + ", telephone=" + telephone + ", address="
				+ address + "]";
	}

}
