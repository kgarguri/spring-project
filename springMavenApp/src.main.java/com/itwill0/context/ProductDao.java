package com.itwill0.context;

import org.springframework.stereotype.Component;

@Component("productDao")
public class ProductDao {
	public ProductDao() {
		System.out.println("1.### ProductDao()기본생성자:"+this);
	}
	public void list() {
		System.out.println("### ProductDao.list()메쏘드호출");
	}
}
