/**
 * 
 */
package com.fee.dao;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.fee.domain.Login;
import com.fee.domain.Student;
import com.fee.domain.StudentFee;



/**
 * @author KARUN
 *
 */
@Repository("StudentDao")
@Transactional
public class StudentDaoImp implements StudentDao {
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	@SuppressWarnings("unchecked")
	@Override
	public int checkLogin(String username, String password) {
		org.hibernate.classic.Session session = sessionFactory
				.getCurrentSession();
		String hql = "from Login l where l.username='" + username
				+ "' and l.password='" + password + "'";
		List<Login> list = session.createQuery(hql).list();
		if (!list.isEmpty()) {

			return 1;
		} else {
			return 2;
		}

	
	}
	@Override
	@Transactional
	public boolean saveStudent(Student student) {
		boolean flag = false;
	/*	org.hibernate.classic.Session session = sessionFactory
				.getCurrentSession();*/
		try {
			 Session session = sessionFactory.openSession();
			  Transaction tx = session.beginTransaction();
			session.saveOrUpdate(student);
			/*StudentFee studentFee = new StudentFee();
			student.setStudentFee(studentFee);
			studentFee.setStudent(student);		*/
			session.save(student);
			System.out.println("exeuted...");
			session.beginTransaction().commit();
			System.out.println("executed...");
		
			flag = true;
		} catch (Exception e) {
			Session session = null;
			session.beginTransaction().rollback();
			e.printStackTrace();
		}
		return flag; 
	}
	@Override
	public List<Student> getList() {
		 Session session = sessionFactory.openSession();
		  @SuppressWarnings("unchecked")
		  List<Student> studentList = session.createQuery("from Student")
		    .list();
		  session.close();
		
		return studentList;
		 }
	

	
	 public Student getRowById(int studentid) {
	  Session session = sessionFactory.openSession();
	  Student stud = (Student) session.load(Student.class, studentid);
	  return stud;
	 }

	 @Override
		public int updateRow(Student student) 
	 {
		 Session session = sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  System.out.println(student.getStudentid());
		  session.saveOrUpdate(student);
		  tx.commit();
		  Serializable id = session.getIdentifier(student);
		  session.close();
		  System.out.println("ID : "+id);
		  return (Integer) id;
		 }
		
		
	 
	
	@Override
	public boolean saveStudentFee(StudentFee studentfee) {
		boolean flag=false;
		try {
			 Session session = sessionFactory.openSession();
			  Transaction tx = session.beginTransaction();
			session.saveOrUpdate(studentfee);
			session.beginTransaction().commit();
			System.out.println("executed...");
			
			flag = true;
			
		} catch (Exception e) {
		
			Session session = null;
			session.beginTransaction().rollback();
			e.printStackTrace();
		}
		return flag;
	}
	}
	
	


