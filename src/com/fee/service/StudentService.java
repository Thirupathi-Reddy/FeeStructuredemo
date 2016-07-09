/**
 * 
 */
package com.fee.service;

import java.util.List;



import com.fee.domain.Student;
import com.fee.domain.StudentFee;


/**
 * @author KARUN
 *
 */
public interface StudentService {
	public  int checkLogin(String username, String password);
	
	public boolean saveStudent(Student student);
    
	 public List<Student> getList();
	 
	 public Student getRowById(int studentid);
	 
	 public int updateRow(Student student);
	
	
	public boolean saveStudentFee(StudentFee studentfee);
	

}
