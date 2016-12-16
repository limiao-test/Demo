package com.wang.io;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;

/**
 * 文件属性。
 *
 */
public class Demo1 {

	/**
	 * 创建文件。
	 */
	
	}

	/**
	 * 删除文件。
	 */
	public void myFile2() {
		// 路径
		String path = "G:/aaa.txt";
		// File
		File file = new File(path);
		// 方法
		boolean del = file.delete();
		System.out.println("delete:" + del);
	}

	/**
	 * 创建文件夹。
	 */
	public void myFile3() {
		// 路径
		String path = "G:/myWork";
		// File
		File file = new File(path);
		// 方法
		boolean succ = file.mkdir();
		System.out.println("succ:" + succ);
	}

	/**
	 * 删除文件夹。
	 */
	public void myFile4() {
		// 路径
		String path = "G:/myWork";
		// File
		File file = new File(path);
		// 方法
		boolean del = file.delete();
		System.out.println("del:" + del);
	}

	/**
	 * 创建多级文件夹。
	 */
	public void myFile5() {
		// 路径
		String path = "G:/myWork/video/movie/2016";
		// File
		File file = new File(path);
		// 方法
		// boolean succ = file.mkdir();
		boolean succ = file.mkdirs();
		System.out.println("succ:" + succ);
	}

	/**
	 * 删除多级文件夹。
	 */
	public void myFile6() {
		// 路径
//		 String path = "G:/myWork/video/movie/2016";
		String path = "G:/myWork";

		// File
		File file = new File(path);
		// 方法
		boolean del = file.delete();
		System.out.println("del:" + del);

		/*
		 * 想一次删除多级文件夹，是不可以的，必须删除里层，再删除外层。
		 */
	}

	/**
	 * 其他方法1。
	 */
	public void myFile7() {
		// 路径
		String path = "G:/aaa.txt";

		// File
		File file = new File(path);

		// 其他方法
		System.out.println("exists:" + file.exists());
		System.out.println("name:" + file.getName());
		System.out.println("path:" + file.getPath());
		System.out.println("isFile:" + file.isFile());
		System.out.println("isDirectory:" + file.isDirectory());
		System.out.println("isHidden:" + file.isHidden());
		System.out.println("lastModified:" + file.lastModified());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String date = sdf.format(file.lastModified());
		System.out.println("lastModified:" + date);
		System.out.println("canRead:" + file.canRead());
		System.out.println("canWrite:" + file.canWrite());
		System.out.println("length:" + file.length());
	}

	/**
	 * 其他方法1。
	 */
	public void myFile8() {
		// 路径
		String path = "G:/myWork/video";

		// File
		File file = new File(path);

		// 存在
//		System.out.println("isDirectory:" + file.isDirectory());
		// 上一级路径
//		System.out.println("Parent:" + file.getParent());
		// 下一级路径
		String[] paths = file.list();
		
		for (String p : paths) {
			System.out.println("Children:" + p);
		}
		
		//上一级文件
//		System.out.println("ParentFile:" + file.getParentFile().getName());
		//下一级文件
//		File[] files = file.listFiles();
//		for (File f : files) {
//			System.out.println("ChildrenFile:" + f.getName());
//		}
	}
}












