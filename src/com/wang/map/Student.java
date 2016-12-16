package com.wang.map;

public class Student {
	
	private String name = "";
	private int age = 0;
	
	
	public Student(String name, int age) {
		this.name = name;
		this.age = age;
	}
	
	@Override
	public String toString() {
		return name + "-" + age;
	}
}
