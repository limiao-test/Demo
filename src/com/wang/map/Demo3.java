package com.wang.map;

import java.util.TreeMap;

/**
 * TreeMap
 *
 */
public class Demo3 {

	/**
	 * 定义。
	 * 
	 * 基本方法。
	 */
	public void myTreeMap1() {
		// 定义
		TreeMap<String, String> map = new TreeMap<String, String>();

		// 添加
		map.put("1", "aaa");
		map.put("2", "bbb");
		map.put("3", "ccc");
		map.put("4", "ddd");
		System.out.println(map);

		// 取出
		String s = map.get("3");
		System.out.println(s);

		// 修改
		map.put("3", "www");
		System.out.println(map);

		// 替换
		map.replace("3", "***");
		System.out.println(map);

		// 删除
		map.remove("3");
		System.out.println(map);

		// 清除
		map.clear();
		System.out.println(map);
	}

	/**
	 * 顺序问题。
	 */
	public void myTreeMap2() {
		// 定义
		TreeMap<String, Student> map = new TreeMap<String, Student>();
		// 数据
		Student s1 = new Student("zhang1", 21);
		Student s2 = new Student("zhang2", 22);
		Student s3 = new Student("zhao1", 31);
		Student s4 = new Student("zhao2", 32);
		Student s5 = new Student("wang1", 41);
		Student s6 = new Student("wang2", 42);
		// 添加数据
		map.put("102", s2);
		map.put("101", s1);
		map.put("202", s4);
		map.put("201", s3);
		map.put("302", s6);
		map.put("301", s5);
		System.out.println(map);

		// null值

	}

	/**
	 * 其他方法
	 */
	public void myTreeMap3() {
		// 定义
		TreeMap<String, Student> map = new TreeMap<String, Student>();
		for (int i = 0; i < 10; i++) {
			map.put("key" + i, new Student("zhang" + i, 20 + i));
		}
		
//		System.out.println("size:" + map.size());
//		System.out.println("isEmpty:" + map.isEmpty());
//		System.out.println("containsKey:" + map.containsKey("aaa"));
//		System.out.println("containsValue:" + map.containsValue(null));
//		System.out.println("firstKey:" + map.firstKey());
//		System.out.println("lastKey:" + map.lastKey());
		System.out.println("ceilingKey:" + map.ceilingKey("key5"));
		System.out.println("floorKey:" + map.floorKey("key2"));
	}

	/**
	 * 遍历
	 */
	public void myTreeMap4() {

	}

	public void myTreeMap5() {

	}

}
