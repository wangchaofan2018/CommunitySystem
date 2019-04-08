package com.studentSystem.utils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
public class TimeToStamp {
	public static long getStampByStringTime(String time){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		long time_stamp = 0;
		try {
			time_stamp=format.parse(time).getTime();
		} catch (ParseException e) {
			e.printStackTrace();
			System.out.println("转化时间失败");
		}
		return time_stamp/1000;
	}
}
