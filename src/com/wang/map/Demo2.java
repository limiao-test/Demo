package com.wang.map;

import java.util.HashMap;
import java.util.Map.Entry;
import java.util.Set;

import javax.swing.text.html.parser.Entity;

/**
 * HashMap
 *
 */
public class Demo2 {

	/**
	 * 定义。
	 * 
	 * 基本操作。
	 * 
	 */
	public void myHashMap1() {

		// 定义
		HashMap<String, String> map = new HashMap<String, String>();

		// 添加
		map.put("1", "aaa");
		map.put("2", "bbb");
		map.put("3", "ccc");
		map.put("1", "ddd");
		System.out.println(map);

		// 取出
		String str = map.get("2");
		System.out.println(str);

		// 删除
		map.remove("2");
		System.out.println(map);

		// 修改
		map.put("1", "www");
		System.out.println(map);

		// 清除
		map.clear();
		System.out.println(map);
	}

	/**
	 * 其他操作。
	 * 
	 */
	public void myHashMap2() {
		// 定义
		HashMap<String, Student> map = new HashMap<String, Student>();
		// 添加
		Student s1 = new Student("zhang1", 21);
		Student s2 = new Student("zhang2", 22);
		Student s3 = new Student("zhang3", 23);
		Student s4 = new Student("zhang4", 24);
		map.put("101", s1);
		map.put("102", s2);
		map.put("103", s3);
		map.put("104", s4);
		System.out.println(map);

		// 其他方法
		System.out.println("size:" + map.size());
		System.out.println("containsKey:" + map.containsKey("104"));
		System.out.println("containsValue:" + map.containsValue(s4));
		System.out.println("isEmpty:" + map.isEmpty());

		// 替换
		map.replace("104", new Student("zhao4", 64));
		System.out.println(map);
	}

	/**
	 * 遍历。
	 * 
	 */
	public void myHashMap3() {
		// 定义
		HashMap<String, Student> map = new HashMap<String, Student>();

		// 添加
		for (int i = 0; i < 5; i++) {
			map.put("10" + i, new Student("zhao" + i, 20 + i));
		}
		System.out.println(map);

		// 遍历1
		System.out.println("----------遍历1------------");
		for (int i = 0; i < map.size(); i++) {
			Student s = map.get("10" + i);
			System.out.println(s);
		}

		// 遍历2
		System.out.println("-----------遍历2-----------");
		Set<Entry<String, Student>> set = map.entrySet();
		for (Entry<String, Student> e : set) {
			Student s = e.getValue();
			System.out.println(s);
		}

		// 遍历3
		System.out.println("-----------遍历3-----------");
		Set<String> keys = map.keySet();
		for (String key : keys) {
			Student s = map.get(key);
			System.out.println(s);
		}

		// 遍历4
		System.out.println("-----------遍历4-----------");
		for (Student s : map.values()) {
			System.out.println(s);
		}
	}
	
	/**
	 * 遍历实践。
	 * 
	 */
	public void myHashMap4() {
		// 定义
		HashMap<String, Student> map = new HashMap<String, Student>();

		// 添加
		for (int i = 0; i < 5; i++) {
			map.put("10" + i, new Student("zhang" + i, 20 + i));
		}
		for (int i = 0; i < 5; i++) {
			map.put("20" + i, new Student("zhao" + i, 30 + i));
		}
		for (int i = 0; i < 5; i++) {
			map.put("30" + i, new Student("wang" + i, 40 + i));
		}
		System.out.println(map);

		// 把班里学号以2开头的学生全找出来？
		
	}
}






