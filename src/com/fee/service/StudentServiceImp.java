/**
 * 
 */
package com.fee.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.fee.dao.StudentDao;
import com.fee.domain.Student;
import com.fee.domain.StudentFee;

/**
 * @author KARUN
 *
 */
@Transactional
@Repository("StudentService")
public class StudentServiceImp implements StudentService{
	
	@Autowired(required=true)
	public 	StudentDao studentDao;

	@Override
	public int checkLogin(String username, String password) {
	
		return studentDao.checkLogin(username,password);
	}

	@Override
	public boolean saveStudent(Student student) {
		return studentDao.saveStudent(student);
		
	}

	@Override
	public List<Student> getList() {
		return studentDao.getList();
		
	}
	
	public Student getRowById(int studentid) 
	{
	 return studentDao.getRowById(studentid);
	}

	@Override
	public int updateRow(Student student) 
	{
		return studentDao.updateRow(student);
		
	}


	@Override
	public boolean saveStudentFee(StudentFee studentfee) {
	return studentDao.saveStudentFee(studentfee);
	
	}

	

	
	

	
	

}
