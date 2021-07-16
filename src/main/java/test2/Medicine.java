package test2;

public class Medicine {

	private int id;
	private String MedName;
	private String form;
	private float strength;
	private double price;
	
	public Medicine() {//no-arg constructor
		super();
		this.id = 0;
		MedName = null;
		this.form = null;
		this.strength = 0;
		this.price = 0;
	}

	public Medicine(int id, String medName, String form, float strength, double price) {//parameterized constructor
		super();
		this.id = id;
		MedName = medName;
		this.form = form;
		this.strength = strength;
		this.price = price;
	}

	
	//getters & setters
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMedName() {
		return MedName;
	}

	public void setMedName(String medName) {
		MedName = medName;
	}

	public String getForm() {
		return form;
	}

	public void setForm(String form) {
		this.form = form;
	}

	public float getStrength() {
		return strength;
	}

	public void setStrength(float strength) {
		this.strength = strength;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	

	
	
	
}
