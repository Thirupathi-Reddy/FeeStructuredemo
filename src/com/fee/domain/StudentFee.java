/**
 * 
 */
package com.fee.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

/**
 * @author Jogarao Uppada
 *
 */

@Entity
@Table(name="STUDENT_FEE")
public class StudentFee implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * Default Constructor
	 */
	public StudentFee() {
	}

	@Id
	@Column(name="S_ID", unique=true, nullable=false)
	@GeneratedValue(generator="gen")
	@GenericGenerator(name="gen",strategy="foreign",parameters=@Parameter(name="property", value="student"))
	private int studentid;
	
	@Column(name="firstname")
	private String firstname;
	
	@Column(name="lastname")
	private String lastname;
	 
	@Column(name="email")
	private String email;
	
	@Column(name="ac_year")
	private String year;
	
	@Column(name="standard")
	private String standard;	
	
	@Column(name="section")
	private String section;
	
	@Column(name="typeofstudent")
	private String typeofstudent;
	
	@Column(name="dateofbirth")
	private String dateofbirth;
	
	/**
	 * @return the totalfee
	 */
	public int getTotalfee() {
		return totalfee;
	}

	/**
	 * @param totalfee the totalfee to set
	 */
	public void setTotalfee(int totalfee) {
		this.totalfee = totalfee;
	}

	/**
	 * @return the dueAmount
	 */
	public int getDueAmount() {
		return dueAmount;
	}

	/**
	 * @param dueAmount the dueAmount to set
	 */
	public void setDueAmount(int dueAmount) {
		this.dueAmount = dueAmount;
	}

	/**
	 * @return the paidAmount
	 */
	public int getPaidAmount() {
		return paidAmount;
	}

	/**
	 * @param paidAmount the paidAmount to set
	 */
	public void setPaidAmount(int paidAmount) {
		this.paidAmount = paidAmount;
	}

	@Column(name="totalfee")
	private int totalfee;
	
	@Column(name="dueAmount")
	private int dueAmount;
	
	@Column(name="paidAmount")
	private int paidAmount;
	
	@Column(name="status")
	private String status;
	
	@Column(name="PaidDate")
	private String paidaDate;
	
	public String getPaidaDate() {
		return paidaDate;
	}

	public void setPaidaDate(String paidaDate) {
		this.paidaDate = paidaDate;
	}

	@OneToOne
	@PrimaryKeyJoinColumn
	private Student student;

	/**
	 * @return the studentid
	 */
	public int getStudentid() {
		return studentid;
	}

	/**
	 * @param studentid the studentid to set
	 */
	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}

	/**
	 * @return the firstname
	 */
	public String getFirstname() {
		return firstname;
	}

	/**
	 * @param firstname the firstname to set
	 */
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	/**
	 * @return the lastname
	 */
	public String getLastname() {
		return lastname;
	}

	/**
	 * @param lastname the lastname to set
	 */
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the year
	 */
	public String getYear() {
		return year;
	}

	/**
	 * @param year the year to set
	 */
	public void setYear(String year) {
		this.year = year;
	}

	/**
	 * @return the standard
	 */
	public String getStandard() {
		return standard;
	}

	/**
	 * @param standard the standard to set
	 */
	public void setStandard(String standard) {
		this.standard = standard;
	}

	/**
	 * @return the section
	 */
	public String getSection() {
		return section;
	}

	/**
	 * @param section the section to set
	 */
	public void setSection(String section) {
		this.section = section;
	}

	/**
	 * @return the typeofstudent
	 */
	public String getTypeofstudent() {
		return typeofstudent;
	}

	/**
	 * @param typeofstudent the typeofstudent to set
	 */
	public void setTypeofstudent(String typeofstudent) {
		this.typeofstudent = typeofstudent;
	}

	/**
	 * @return the dateofbirth
	 */
	public String getDateofbirth() {
		return dateofbirth;
	}

	/**
	 * @param dateofbirth the dateofbirth to set
	 */
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	

	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	

	/**
	 * @return the student
	 */
	public Student getStudent() {
		return student;
	}

	/**
	 * @param student the student to set
	 */
	public void setStudent(Student student) {
		this.student = student;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
			
}
