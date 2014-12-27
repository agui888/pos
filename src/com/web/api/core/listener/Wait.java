package com.web.api.core.listener;

public class Wait extends Thread {
	
	private boolean waitFlag = true;  
	
	public void run() {
		while(waitFlag) {
			System.out.print(".");
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void terminate(){
		System.out.println();
		waitFlag = false;
	}
	
}
