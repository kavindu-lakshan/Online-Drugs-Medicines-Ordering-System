package test2;

public class Manufacturer {
	private int id;
	private String brandname;
	private String agentname;
	private String contact;
	private String email;
	private String comaddress;
	private String comusername;
	private String compw;
	public Manufacturer(int id, String brandname, String agentname, String contact, String email, String comaddress,
			String comusername, String compw) {//parameterized constructor
		super();
		this.id = id;
		this.brandname = brandname;
		this.agentname = agentname;
		this.contact = contact;
		this.email = email;
		this.comaddress = comaddress;
		this.comusername = comusername;
		this.compw = compw;
	}
	public int getId() {
		return id;
	}
	
	public String getBrandname() {
		return brandname;
	}
	
	public String getAgentname() {
		return agentname;
	}
	
	public String getContact() {
		return contact;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getComaddress() {
		return comaddress;
	}
	
	public String getComusername() {
		return comusername;
	}
	
	public String getCompw() {
		return compw;
	}
	
	
	
	
}
