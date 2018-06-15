package com.neuedu.pro3.util;

/**
 * 工具类集合
 * @author Sun
 */
public class Tools {
	public static String stringFilter(String in) {
		if(in == null) {
			return null;
		} else if (in.length() == 0) {
			return in;
		}
		in = in.replaceAll("&", "&amp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll(" ", "&nbsp;").replaceAll("'", "&#39;").replaceAll("\"","&quot;").replaceAll("\n", "<br>");
		return in;
	}
}
