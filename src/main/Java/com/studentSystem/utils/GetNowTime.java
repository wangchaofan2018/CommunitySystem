package com.studentSystem.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class GetNowTime {
	public static Date getTime(){
		long time = new Date().getTime();
		Date regTime = null;
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			regTime= format.parse(format.format(time));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return regTime;
	}

	public static long getTimeStamp() {
		SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//获取当前时间
		String time = sd.format(new Date());
		Date date = null;
		long unixTimestamp=0;
		//时间转换为时间戳

		try {
			date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(time);
			unixTimestamp = date.getTime() / 1000;
		} catch (ParseException e) {
			e.printStackTrace();
			System.out.println("时间戳转换失败");
		}
		return unixTimestamp;
	}
}
