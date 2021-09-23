package mybean.customer;

public class CustomerAppBean {
	private String name;
	private int age;
	
	// <jsp:useBean/> 태그는 기본 생성자가 필요하므로 선언
	public CustomerAppBean() {}
	
	public CustomerAppBean(String name, int age) {
		this.name = name;
		this.age = age;
	}

	public String getName() {
		return name;
	}
	
	public int getAge() {
		return age;
	}
}
