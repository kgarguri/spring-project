package com.mybatis3.dao;

public class MapperInterfaceStudentDaoMain {

	public static void main(String[] args) {
		System.out.println("------------StudentMapper Interface를 사용한Dao메쏘드호출-----------");
		MapperInterfaceStudentDao studentDao = new MapperInterfaceStudentDao();
		System.out.println("### "+studentDao.findStudentById(1));
		System.out.println("------------StudentMapper Interface를 사용한호출-----------");
	}

}
