package mybean.customer;

import java.util.Vector;

public class VectorAppBean {
	private String name;
	private int age;
	private Vector<CustomerAppBean> vector;
	
	public VectorAppBean() {
		 vector = new Vector<>();
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setAge(int age) {
		this.age = age;
		vector.addElement(new CustomerAppBean(this.name, this.age));
	}
	
	public CustomerAppBean[] getCustomer() {
		int size = vector.size();
		CustomerAppBean[] c = new CustomerAppBean[size];
		for (int i=0; i<size; i++) {
			c[i] = (CustomerAppBean) vector.elementAt(i);
		}
		
		return c;
	}
	
	public void setDelete(int index) {
		vector.remove(index - 1);
	}
}