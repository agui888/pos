package com.web.api.core.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * 日期函数大全
 * @author Tobin
 *
 */
public class DateUtils {

	/**
	 * 格式化日期
	 * @param date
	 * @param format
	 * @return
	 */
	public static String parseDateFormat(Date date, String format) {
		SimpleDateFormat fm = new SimpleDateFormat(format);
		return fm.format(date);
	}
	
	/**
	 * 格式化日期
	 * @param date
	 * @return
	 */
	public static Date formatDate(Date date) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String ed = simpleDateFormat.format(date);
		Date temp = new Date();
		try {
			temp = simpleDateFormat.parse(ed);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return temp;
	}

	/**
	 * 格式化日期时间
	 * @param date
	 * @return
	 */
	public static Date formatDateTime(Date date) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String ed = simpleDateFormat.format(date);
		Date temp = new Date();
		try {
			temp = simpleDateFormat.parse(ed);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return temp;
	}

	/**
	 * 日期转字符
	 * @param date
	 * @return
	 */
	public static String dateToStr(Date date) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		return simpleDateFormat.format(date);
	}
	
	/**
	 * 日期时间转字符
	 * @param date
	 * @return
	 */
	public static String dateTimeToStr(Date date) {
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return simpleDateFormat.format(date);
	}
	
	/**
	 * 字符转为日期
	 * @param date
	 * @return
	 */
	public static Date strToDate(String date) throws Exception {
		if (date != null){
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			Date temp = null;
			try {
				temp = simpleDateFormat.parse(date);
			} catch (ParseException e) {
				e.printStackTrace();
				throw new Exception(e);
			}
			return temp;			
		}else{
			return null;
		}
	}

	/**
	 * 字符转为日期时间
	 * @param date
	 * @return
	 * @throws Exception
	 */
	public static Date strToDateTime(String date) throws Exception {
		if (date != null){
			if (date.length() == 10)
				date += " 00:00:00";
			if (date.length() == 16)
				date += ":00";
			date = BaseUtils.replaceStr(date, " CST ", "");
			date = BaseUtils.replaceStr(date, " GMT ", " ");
			
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date temp = null;
			try {
				temp = simpleDateFormat.parse(date);
			} catch (ParseException e) {
				e.printStackTrace();
				throw new Exception(e);
			}
			return temp;	
		}else{
			return null;
		}
	}
	
	/**
	 * 获取当前系统日期
	 * @return
	 */
	public static String getCurrentDate(){
		 SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		 Calendar  cal = Calendar.getInstance();
		 return format.format(cal.getTime());
	}
	
	/**
	 * 获取当前系统日期时间
	 * @return
	 */
	public static String getCurrentDateTime(){
		 SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"); 
		 Calendar cal = Calendar.getInstance();
		 return format.format(cal.getTime());
	}
	
	/**
	 * 获取当前系统日期时间
	 * @return
	 */
	public static String getCurrentDateTimeString(){
		 SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss"); 
		 Calendar cal = Calendar.getInstance();
		 return format.format(cal.getTime());
	}
	
	/**
	 * 根据前日期加一天,即得到昨天日期
	 * @param date
	 * @return
	 * @throws Exception
	 */
	public static String getLastDay(String date) throws Exception{
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		 Calendar  cal = Calendar.getInstance();
		 cal.setTime(strToDate(date));
		 cal.add(Calendar.DATE,-1);  
		 return  format.format(cal.getTime());
	}
	
	/**
	 * 根据前日期加一天,即得到明天日期
	 * @param date
	 * @return
	 * @throws Exception
	 */
	public static String getNextDay(String date) throws Exception{
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		 Calendar  cal = Calendar.getInstance();
		 cal.setTime(strToDate(date));
		 cal.add(Calendar.DATE,1);  
		 return format.format(cal.getTime());
	}
	
	/**
	 * 上月的第一天
	 * @return
	 */
	public static String getLastMonthStart(){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();		
		int dayOfMoth = cal.get(Calendar.DAY_OF_MONTH);
		cal.add(Calendar.MONTH,-1);  	   
		Calendar   calstart = (Calendar) cal.clone();
		calstart.add(Calendar.DATE, cal.getActualMinimum(Calendar.DAY_OF_MONTH)-dayOfMoth);
		return format.format(calstart.getTime());
	}

	/**
	 * 上月的最后一天
	 * @return
	 */
	public static String getLastMonthEnd(){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Calendar  cal = Calendar.getInstance();		
		int dayOfMoth = cal.get(Calendar.DAY_OF_MONTH);
		 cal.add(Calendar.MONTH,-1);  	  
		 Calendar  calend   = (Calendar) cal.clone();		
		 calend.add(Calendar.DATE,cal.getActualMaximum(Calendar.DAY_OF_MONTH)-dayOfMoth);
		return format.format(calend.getTime());
	}

	/**
	 * 当前月的第一天
	 * @return
	 */
	public static String getCurrentMonthStart(){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal = Calendar.getInstance();		
		int dayOfMoth = cal.get(Calendar.DAY_OF_MONTH);   
		Calendar   calstart = (Calendar) cal.clone();
		calstart.add(Calendar.DATE, cal.getActualMinimum(Calendar.DAY_OF_MONTH)-dayOfMoth);
		return format.format(calstart.getTime());
	}
	
	/**
	 * 当前月的最后一天
	 * @return
	 */
	public static String getCurrentMonthEnd(){
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Calendar  cal = Calendar.getInstance();		
		int dayOfMoth = cal.get(Calendar.DAY_OF_MONTH); 
		 Calendar  calend   = (Calendar) cal.clone();		
		 calend.add(Calendar.DATE,cal.getActualMaximum(Calendar.DAY_OF_MONTH)-dayOfMoth);
		return format.format(calend.getTime());
	}
	
	/**
	 * 根据输入的日期检测是否为 "今天"
	 * @param date
	 * @return
	 */
	public static String checkToDay(Date date) {
		SimpleDateFormat today = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c = Calendar.getInstance();
		if (today.format(date.getTime()).equals(today.format(c.getTime())))
			return "今天";
		return null;
	}
	
	/**
	 * 根据输入的日期检测是否为 "昨天"
	 * @param date
	 * @return
	 */
	public static String ckeckYesterDay(Date date) {
		SimpleDateFormat today = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c = Calendar.getInstance();		
		c.add(Calendar.DATE, -1);
		if (today.format(date.getTime()).equals(today.format(c.getTime())))
			return "昨天";
		return null;
	}
	
	/**
	 * 根据输入的日期检测是否为 "前天"
	 * @param date
	 * @return
	 */
	public static String checkBeforeYesterDay(Date date) {
		SimpleDateFormat today = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c = Calendar.getInstance();		
		c.add(Calendar.DATE, -2);
		if (today.format(date.getTime()).equals(today.format(c.getTime())))
			return "前天";
		return null;
	}
	
	/**
	 * 比较两个时间中的差
	 * @param startDate
	 * @param endDate
	 * @return
	 * @throws ParseException
	 */
	public static String compareDateTime(Date startDate,Date endDate) {
		long l;
		
		try {
			l = endDate.getTime() - startDate.getTime();
		} catch(Exception e) {
			return null;
		}
		
	    long day=l/(24*60*60*1000); 
	    long hour=(l/(60*60*1000)-day*24); 
	    long min=((l/(60*1000))-day*24*60-hour*60); 
	    long s=(l/1000-day*24*60*60-hour*60*60-min*60);
	    if (day > 0)
	    	return ""+day+"天"+hour+"时"+min+"分"+s+"秒";
	    else if (hour > 0)
	    	return ""+hour+"时"+min+"分"+s+"秒";
	    else if (min > 0)
	    	return ""+min+"分"+s+"秒";
	    else
	    	return ""+s+"秒";
	}
	
	/**
	 * 比较两个时间之间的相差天数
	 * @param startDate
	 * @param endDate
	 * @return
	 * @throws ParseException
	 */
	public static int getDays(Date startDate,Date endDate) throws ParseException{
		Calendar starttime = Calendar.getInstance();   
        Calendar endtime = Calendar.getInstance();   
        starttime.setTime(startDate);
        endtime.setTime(endDate);
        
        long subtime = endtime.getTime().getTime() - starttime.getTime().getTime();
        int days = (int)(subtime / (1000 * 60 * 60 * 24));  // 86400000
		return days;
	}
	
	/**
	 * 比较两个时间之间的相差分钟
	 * @param startDate
	 * @param endDate
	 * @return
	 * @throws ParseException
	 */
	public static int getMinute(Date startDate, Date endDate) throws ParseException{
		Calendar starttime = Calendar.getInstance();   
        Calendar endtime = Calendar.getInstance(); 
        starttime.setTime(startDate);
        endtime.setTime(endDate);
        
	    long subtime = endtime.getTimeInMillis() - starttime.getTimeInMillis();
	    long result = subtime / (1000 * 60);
	    return (int)result;
	}
	
	/**
	 * 根据当前日期,检测本周日是[几月几日]
	 * 星期日为每周第一天
	 * @param date
	 * @return
	 * @throws ParseException
	 */
	public static String checkTheWeekStart(Date date) throws ParseException{
		Calendar cal = Calendar.getInstance();    	 
		cal.setTime(date);
		Calendar calstart = (Calendar)cal.clone();
		int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
	    calstart.add(Calendar.DATE, cal.getActualMinimum(Calendar.DAY_OF_WEEK)-dayOfWeek);   
		return dateToStr(calstart.getTime()) ;
	}
	
	/**
	 * 根据当前日期,检测本周六是[几月几日]
	 * 星期六为每周第一天
	 * @param date
	 * @return
	 * @throws ParseException
	 */
	public static String checkTheWeekEnd(Date date) throws ParseException{
		 Calendar  cal = Calendar.getInstance();
		 cal.setTime(date);
		 Calendar calend = (Calendar)cal.clone();
		 int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);  
		 calend.add(Calendar.DATE,cal.getActualMaximum(Calendar.DAY_OF_WEEK)-dayOfWeek);
		 return dateToStr(calend.getTime());
	}

}
