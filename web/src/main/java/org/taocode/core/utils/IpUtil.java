package org.taocode.core.utils;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;

/**
 * IP工具类,从淘宝获取IP地址归属地
 * 
 * @author liuwt, created on 2013-8-14 下午3:13:48
 * 
 */
public class IpUtil {

	/**
	 * 获取登录用户的IP地址
	 * 
	 * @param request
	 * @return
	 */
	public static String getIpAddr(final HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if ((ip == null) || (ip.length() == 0)
				|| "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if ((ip == null) || (ip.length() == 0)
				|| "unknown".equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if ((ip == null) || (ip.length() == 0)
				|| "unknown".equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		if (ip.equals("0:0:0:0:0:0:0:1")) {
			ip = "本地";
		}
		if (ip.split(",").length > 1) {
			ip = ip.split(",")[0];
		}
		return ip;
		//return getIpInfo(ip);
	}

	/**
	 * 通过IP获取地址
	 * 
	 * @param ip
	 * @return
	 */
	public static String getIpInfo(final String ip) {
		String info = "";
		try {
			final URL url = new URL(
					"http://ip.taobao.com/service/getIpInfo.php?ip=" + ip);
			final HttpURLConnection htpcon = (HttpURLConnection) url
					.openConnection();
			htpcon.setRequestMethod("GET");
			htpcon.setDoOutput(true);
			htpcon.setDoInput(true);
			htpcon.setUseCaches(false);

			final InputStream in = htpcon.getInputStream();
			final BufferedReader bufferedReader = new BufferedReader(
					new InputStreamReader(in));
			final StringBuffer temp = new StringBuffer();
			String line = bufferedReader.readLine();
			while (line != null) {
				temp.append(line).append("\r\n");
				line = bufferedReader.readLine();
			}
			bufferedReader.close();
			final JSONObject obj = (JSONObject) JSON.parse(temp.toString());
			if (obj.getIntValue("code") == 0) {
				final JSONObject data = obj.getJSONObject("data");
				info += data.getString("country") + " ";
				info += data.getString("region") + " ";
				info += data.getString("city") + " ";
				info += data.getString("isp");
			}
		}
		catch (final MalformedURLException e) {
			e.printStackTrace();
		}
		catch (final ProtocolException e) {
			e.printStackTrace();
		}
		catch (final IOException e) {
			e.printStackTrace();
		}
		return info;
	}

}
