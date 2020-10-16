package com.mybatis3.basic;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.mybatis3.domain.Student;

public class MyBatisFlowMain {

	public static void main(String[] args) throws Exception{
		/*
		 * 0. mybatis-config.xml --> InputStream
		 */
		InputStream mybatisConfigInputStream = 
				Resources.getResourceAsStream("mybatis-config.xml");
		/*
		 * 1. SqlSessionFactoryBuilder
		 */
		SqlSessionFactoryBuilder ssfb=new SqlSessionFactoryBuilder();
		/*
		 * auto commit = true
		 * 
		 * 2. SqlSessionFactory
		 */
		SqlSessionFactory ssf=ssfb.build(mybatisConfigInputStream);
		/*
		 * 3. SqlSession
		 */
		SqlSession sqlSession = ssf.openSession();
		/*
		 * 4. SqlSession사용(CRUD)
		 */
		System.out.println("#### SqlSession객체 : "+sqlSession);
		Student findStudent = sqlSession.
				selectOne("com.mybatis3.dao.mapper.StudentMapper.findStudentById",new Integer(2));
		System.out.println("####"+findStudent);
		List<Student> studentList = sqlSession.
				selectList("com.mybatis3.dao.mapper.StudentMapper.findAllStudents");
		System.out.println(studentList);
		/*
		 * 
		 */
		sqlSession.close();
	}

}



