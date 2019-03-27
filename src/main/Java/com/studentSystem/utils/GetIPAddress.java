package com.studentSystem.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

import javax.servlet.http.HttpServletRequest;
/**
 * 获取ip并解析地址
 * @author WZY
 *
 */
public class GetIPAddress {
	/**
	 * 网页请求获取iP
	 * @param request
	 * @return
	 */
	public static String getIp(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return ip;
	}
	/**
	 * 根据ip解析地址
	 * @param strIP
	 * @return
	 */
	public static String getAddressByIP(String strIP) {
		String msg = "";
		try {
			URL url = new URL("http://ip.taobao.com/service/getIpInfo.php?ip=" + strIP);
			URLConnection conn = url.openConnection();
			BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
			String line = null;
			StringBuffer result = new StringBuffer();
			while ((line = reader.readLine()) != null) {
				result.append(line);
			}
			reader.close();

			String code = "{\"code\":";
			if ("0".equals(String.valueOf(result.toString().charAt(result.toString().indexOf(code) + code.length())))) {
				String country = ",\"country\":\"";
				msg += getDetail(result.toString(), country);

				String area = ",\"area\":\"";
				msg += getDetail(result.toString(), area);

				String region = ",\"region\":\"";
				msg += getDetail(result.toString(), region);

				String city = ",\"city\":\"";
				msg += getDetail(result.toString(), city);
			} else {
				msg = "无效查询";
			}

		} catch (IOException e) {
			msg = "无效查询";
		}
		return msg;
	}
	/**
	 * 获取相应信息
	 * @param str
	 * @param substr
	 * @return
	 */
	public static String getDetail(String str, String substr) {
		String result = " ";
		int substr_index = str.indexOf(substr) + substr.length();
		while (!"\"".equals(String.valueOf(str.charAt(substr_index)))) {
			result += String.valueOf(str.charAt(substr_index));
			substr_index++;
		}
		return result;
	}
}
