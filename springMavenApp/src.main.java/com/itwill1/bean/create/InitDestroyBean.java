package com.itwill1.bean.create;

public class InitDestroyBean {
	public InitDestroyBean() {
		System.out.println("### InitDestroyBean()기본생성자");
	}
	public void myInit() {
		System.out.println("### InitDestroyBean.myInit()메쏘드호출");
	}
	public void myDestroy() {
		System.out.println("### InitDestroyBean.myDestroy()메쏘드호출");
	}
	
	
}
