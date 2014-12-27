package com.web.api.core.utils;

import java.math.BigDecimal;
import java.security.MessageDigest;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.jsp.JspTagException;

public class BaseUtils {

	/**
	 * 将a, b, c, d 转成 'a','b','c','d'
	 * @param value
	 * @return
	 */
	public static String arrayToSqlIn(String value) {
		String rs = "";
		if (BaseUtils.isNotEmpty(value)) {
			String[] str = value.split(",");
			for (String s : str) {
				if (BaseUtils.isEmpty(rs))
					rs = "'" + s + "'";
				else
					rs += ", '" + s + "'";
			}
		}
		return rs;
	}
	
	/**
	 * 根据Object[]判断是否存在key对像
	 * @param array
	 * @param key
	 * @return
	 */
	public static int arrayExists(Object[] array, Object key) {
		int ret = -1;
		for (int i = 0; i < array.length; i++)
			if (array[i] != null && array[i].equals(key))
				return i;
		return ret;
	}

	/**
	 * 根据List判断是否存在key对像
	 * @param list
	 * @param key
	 * @return
	 */
	public static boolean listExists(List<?> list, String key) {
		if (list == null)
			return false;

		for (int i = 0; i < list.size(); i++) {
			String o = (String) list.get(i);
			if (o == key)
				return true;
		}

		return false;
	}

	/**
	 * 为空判断时就返回ren参数值
	 * @param str
	 * @param ren
	 * @return
	 */
	public static String ifNull(String str, String ren) {
		if (str == null || str.length() == 0 || str.equals("null"))
			return ren;
		else
			return str;
	}

	/**
	 * 为空判断
	 * @param str
	 * @return
	 */
	public static boolean isEmpty(Object string) {
		if (string == null)
			return true;
		
		if (string.toString().length() == 0)
			return true;
		
		return false;
	}

	/**
	 * 不为空判断
	 * @param str
	 * @return
	 */
	public static boolean isNotEmpty(Object string) {
		return string != null && string.toString().length() > 0;
	}

	/**
	 * 为空判断
	 * @param object
	 * @return
	 */
	public static boolean isNull(Object object) {
		boolean result = false;
		if (object == null)
			result = true;
		return result;
	}

	/**
	 * 不为空判断
	 * @param object
	 * @return
	 */
	public static boolean isNotNull(Object object) {
		boolean result = false;
		if (object != null)
			result = true;
		return result;
	}

	/**
	 * 字符串替换函数 sql = Util.replaceStr(sql, "@userid", baseAttrib.getUserid());
	 * @param strSource
	 * @param strFrom
	 * @param strTo
	 * @return
	 */
	public static String replaceStr(String strSource, String strFrom,
			String strTo) {
		if (strSource == null)
			return null;

		int i = 0;
		if ((i = strSource.indexOf(strFrom, i)) >= 0) {
			char[] cSrc = strSource.toCharArray();
			char[] cTo = strTo.toCharArray();
			int len = strFrom.length();
			StringBuffer buf = new StringBuffer(cSrc.length);
			buf.append(cSrc, 0, i).append(cTo);
			i += len;
			int j = i;
			while ((i = strSource.indexOf(strFrom, i)) > 0) {
				buf.append(cSrc, j, i - j).append(cTo);
				i += len;
				j = i;
			}
			buf.append(cSrc, j, cSrc.length - j);
			return buf.toString();
		}
		return strSource;
	}

	/**
	 * 解决下载中文文件名的乱代码处理
	 * @param str
	 * @return
	 */
	public static String toUtf8String(String str) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < str.length(); i++) {
			char c = str.charAt(i);
			if (c >= 0 && c <= 255) {
				sb.append(c);
			} else {
				byte[] b;
				try {
					b = Character.toString(c).getBytes("utf-8");
				} catch (Exception ex) {
					ex.printStackTrace();
					b = new byte[0];
				}
				for (int j = 0; j < b.length; j++) {
					int k = b[j];
					if (k < 0)
						k += 256;
					sb.append("%" + Integer.toHexString(k).toUpperCase());
				}
			}
		}
		return sb.toString();
	}

	/**
	 * Tomcat中间件需要 GBK 转换, WebLogic则不需要
	 * @param str
	 * @return
	 * @throws Exception
	 */
	public static String getChar(String str) throws Exception {
		if (str != null) 
			str = new String(str.getBytes("iso-8859-1"),"UTF-8");
		return str;
	}

	/**
	 * 检测是否为整型
	 * @param str
	 * @return
	 */
	public static boolean checkIntegerRegex(String str) {
		Pattern pattern = Pattern.compile("^[+\\-]?\\d+$");
		Matcher matcher = pattern.matcher(str.trim());
		return matcher.matches();
	}

	/**
	 * 检测是否为Number格式
	 * @param str
	 * @return
	 */
	public static boolean checkNumericRegex(String str) {
		Pattern pattern = Pattern.compile("^[+\\-]?((\\d*\\.\\d+)|(\\d+))$");
		Matcher matcher = pattern.matcher(str.trim());
		return matcher.matches();
	}

	/**
	 * 检测是否为Email格式
	 * @param str
	 * @return
	 */
    public static boolean checkEmail(String str) { 
	   if (str == null || str.trim().equals(""))
           return false;
	   
	   String email1="@";   
	   String email2=".";   
	   if((str.indexOf(email1)!=-1)&&(str.indexOf(email2)!=-1))
		   return true;	      
       else   
	       return false;   
    }
   
	/**
	 * 检测是否为Email格式
	 * @param str
	 * @return
	 */
	public static boolean checkEmailRegex(String str) {
		if (str == null || str.trim().equals(""))
			return false;

		Pattern pattern = Pattern.compile("^[_a-zA-Z0-9]+(\\.[_a-zA-Z0-9]+)*@[a-zA-Z0-9_-]+(\\.[a-z0-9A-Z-_]+)+$");
		Matcher matcher = pattern.matcher(str);
		return matcher.matches();
	}

	/**
	 * 字符型转整型
	 * @param intstr
	 * @return
	 */
	public static int strToInt(String intstr) {
		if (intstr == null) {
			return 0;
		}
		Integer integer;
		integer = Integer.valueOf(intstr);
		return integer.intValue();
	}

	/**
	 * 整型转字符型
	 * @param value
	 * @return
	 */
	public static String intToStr(int value) {
		Integer integer = new Integer(value);
		return integer.toString();
	}

	/**
	 * 字符型转浮点型
	 * @param floatstr
	 * @return
	 */
	public static float strToFloat(String floatstr) {
		Float floatee;
		floatee = Float.valueOf(floatstr);
		return floatee.floatValue();
	}

	/**
	 * 浮点型转字符型
	 * @param value
	 * @return
	 */
	public static String floatToStr(float value) {
		Float floatee = new Float(value);
		return floatee.toString();
	}

	/**
	 * 要求舍入后返回BigDecimal类型
	 * @param dou 待舍入的数字
	 * @param scale 返回的BigDecimal对象的标度（scale）
	 * @param roundmode 舍入模式
	 * @return
	 */
	public static BigDecimal getRound(double dou, int scale, int roundmode) {
		BigDecimal paramNumber = new BigDecimal(dou);
		return paramNumber.setScale(scale, roundmode);
	}

	/**
	 * 获取MD5加密
	 * @param str
	 * @return
	 * @throws Exception
	 */
	public static String getMD5Str(String str) {
		MessageDigest messageDigest = null;

		try {
			messageDigest = MessageDigest.getInstance("MD5");
			messageDigest.reset();
			messageDigest.update(str.getBytes("UTF-8"));
		} catch (Exception e) {
			e.printStackTrace();
		}

		byte[] byteArray = messageDigest.digest();

		StringBuffer md5StrBuff = new StringBuffer();

		for (int i = 0; i < byteArray.length; i++) {
			if (Integer.toHexString(0xFF & byteArray[i]).length() == 1)
				md5StrBuff.append("0").append(
						Integer.toHexString(0xFF & byteArray[i]));
			else
				md5StrBuff.append(Integer.toHexString(0xFF & byteArray[i]));
		}

		return md5StrBuff.toString();
	}
	
	public static boolean bigDecimalToBoolean(Object obj) {
		if (obj != null) {
			BigDecimal bd = (BigDecimal)obj;
			int i = bd.intValue();
			if (i == 0)
				return false;
			else if (i == 1)
				return true;
		} 
		return false;
	}
	
	/**
	 * HTML 转换 TEXT
	 * @param htmlStr
	 * @param length
	 * @return
	 * @throws JspTagException
	 */
	public static String html2Text(String htmlStr, int length) throws JspTagException {
		  if (BaseUtils.isEmpty(htmlStr)) 
			  return null;
		  
		  String textStr = "";
		  Pattern p_script;
		  Matcher m_script;
		  Pattern p_style;
		  Matcher m_style;
		  Pattern p_html;
		  Matcher m_html;
		   
		  try {
			  String regEx_script = "<[\\s]*?script[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?script[\\s]*?>"; //定义script的正则表达式{或<script[^>]*?>[\\s\\S]*?<\\/script> }
			  String regEx_style = "<[\\s]*?style[^>]*?>[\\s\\S]*?<[\\s]*?\\/[\\s]*?style[\\s]*?>"; //定义style的正则表达式{或<style[^>]*?>[\\s\\S]*?<\\/style> }
			  String regEx_html = "<[^>]+>"; //定义HTML标签的正则表达式
		  
		      p_script = Pattern.compile(regEx_script,Pattern.CASE_INSENSITIVE);
		      m_script = p_script.matcher(htmlStr);
		      htmlStr = m_script.replaceAll(""); //过滤script标签
		
		      p_style = Pattern.compile(regEx_style,Pattern.CASE_INSENSITIVE);
		      m_style = p_style.matcher(htmlStr);
		      htmlStr = m_style.replaceAll(""); //过滤style标签
		  
		      p_html = Pattern.compile(regEx_html,Pattern.CASE_INSENSITIVE);
		      m_html = p_html.matcher(htmlStr);
		      htmlStr = m_html.replaceAll(""); //过滤html标签
		  
		      textStr = htmlStr.replaceAll("[\\n|\\r|\\t|&nbsp;| ]","");//过滤空格换行Tab符
		      
	      } catch (Exception e) {
	    	  e.printStackTrace();
	      }
		  
		  if (textStr.length() < length) {
			  return textStr;
		  } else {
			  return textStr.substring(0, length) + "...";
		  }
	}

}
