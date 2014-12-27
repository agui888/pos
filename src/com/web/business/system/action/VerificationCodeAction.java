package com.web.business.system.action;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class VerificationCodeAction extends ActionSupport implements Action {

	private static final long serialVersionUID = 1L;

	// Session Name
	private String key = null; 
		
	//	验证码图片宽度
	private static final int WIDTH = 60;
	
	//验证码图片高度
	private static final int HEIGHT = 20;
	
	//验证码数量
	private static final int CODE_AMOUNT = 4;
	
	//验证码序列
	private static final char[] randomSequence = new char[]{'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','1','2','3','4','5','6','7','8','9','0'};
	
	//保存验证码图像数据的字节数组
	private byte[] imageBytes;
	
	public String code() throws Exception {
		key = ServletActionContext.getRequest().getParameter("key");
		generateValidationCodeImage(key);
		return SUCCESS;
	}
	
	/**
	 * 给定范围内获取随机颜色
	 * @param fc
	 * @param bc
	 * @return
	 */
	private Color getRangeColor(int fc,int bc){
		Random random = new Random();
		if(fc>255)
			fc=200;
		if(bc>255)
			bc=255;
		int r = fc+random.nextInt(bc - fc);
		int g = fc+random.nextInt(bc - fc);
		int b = fc+random.nextInt(bc - fc);
		return new Color(r,g,b);
	}
	
	/**
	 * 产生验证码图像，将图像数据保存到字节数组中
	 * @throws IOException 
	 */
	private void generateValidationCodeImage(String codeKey) throws IOException{
		int fontHeight;
		int rectWidth,rectHeight;
		int offsetWidth;
		int addition;
		int codeHeight;
		
		fontHeight = HEIGHT - 2;
		rectWidth = WIDTH - 1;
		rectHeight = HEIGHT -1;
		offsetWidth = WIDTH/(CODE_AMOUNT+1);
		addition = offsetWidth / 2;
		codeHeight = HEIGHT - 4;
		
		BufferedImage buffImg = new BufferedImage(WIDTH,HEIGHT,BufferedImage.TYPE_INT_RGB);
		Graphics2D g = buffImg.createGraphics();
		Random random = new Random();
		g.setColor(getRangeColor(200, 250));
		g.fillRect(0, 0, WIDTH, HEIGHT);
		Font font = new Font("Times New Roman",Font.PLAIN,fontHeight);
		g.setFont(font);
		g.setColor(Color.BLACK);
		g.drawRect(0, 0, rectWidth, rectHeight);
		g.setColor(getRangeColor(160, 200));
		for(int i=0;i<160;i++){
			int x = random.nextInt(WIDTH);
			int y = random.nextInt(HEIGHT);
			int x1 = random.nextInt(12);
			int y1 = random.nextInt(12);
			g.drawLine(x, y, x+x1, y+y1);
		}
		
		StringBuffer sb = new StringBuffer();
		int red = 0,green = 0,blue = 0;
		
		for(int i=0;i<CODE_AMOUNT;i++){
			int index = random.nextInt(35);
			String strRand = String.valueOf(randomSequence[index]);
			sb.append(strRand);
			
			red = random.nextInt(110);
			green = random.nextInt(50);
			blue = random.nextInt(50);
			
			g.setColor(new Color(20+red,20+green,20+blue));
			g.drawString(strRand, offsetWidth*i+addition, codeHeight);
		}
		
		ServletActionContext.getRequest().getSession().setAttribute(codeKey, sb.toString());
		
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		ImageIO.write(buffImg, "jpeg", baos);
		imageBytes = baos.toByteArray();
		baos.close();
	}
	
	//用于向自定义结果返回图像MIME类型
	public String getContentType(){
		return "image/jpeg";
	}
	
	//用于向自定义结果返回图像数据的长度
	public int getContentLength(){
		return imageBytes.length;
	}
	
	//用于向自定义结果返回图像数据
	public byte[] getImageInBytes(){
		return imageBytes;
	}

}
