package com.studentSystem.utils;

import java.util.Random;

public class UUID {
	public static long getId(){
		StringBuilder base = new StringBuilder();
		Random random = new Random();
		for (int i=0;i<10;i++){
			int num = random.nextInt(10);
			base.append(num);
		}
		return Long.parseLong(base.toString());
	}
}
