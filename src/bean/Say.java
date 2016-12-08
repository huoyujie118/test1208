package bean;

import java.util.Date;

public class Say {
	private int say_id;
	private String say_content;
	private String say_time;
	private String say_username;

	public Say() {
		super();
		// TODO Auto-generated constructor stub
	}

public Say(int say_id, String say_content, String say_time,
			String say_username) {
		super();
		this.say_id = say_id;
		this.say_content = say_content;
		this.say_time = say_time;
		this.say_username = say_username;
	}

	public int getSay_id() {
		return say_id;
	}

	public void setSay_id(int say_id) {
		this.say_id = say_id;
	}

	public String getSay_content() {
		return say_content;
	}

	public void setSay_content(String say_content) {
		this.say_content = say_content;
	}

	public String getSay_time() {
		return say_time;
	}

	public void setSay_time(String say_time) {
		this.say_time = say_time;
	}

	public String getSay_username() {
		return say_username;
	}

	public void setSay_username(String say_username) {
		this.say_username = say_username;
	}

	@Override
	public String toString() {
		return "Say [say_id=" + say_id + ", say_content=" + say_content
				+ ", say_time=" + say_time + ", say_username=" + say_username
				+ "]";
	}

}
