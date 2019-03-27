package com.studentSystem.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtil {
	public static String getStringAddP(String str) {
		if (str != null && !"".equals(str)) {
			Pattern p = Pattern.compile("\\s*|\n");
			Matcher m = p.matcher(str);
			String strNoBlank = m.replaceAll("</p><p>");
			return strNoBlank;
		} else {
			return str;
		}
	}
}