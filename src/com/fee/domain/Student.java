/**
 * 
 */
package com.fee.domain;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;

/**
 * @author Jogarao Uppada
 *
 */
@Entity
@Table(name="STUDENT")
public class Student implements Serializable {

	/**
	 * Default Constructor
	 */
	public Student() {
	}
	
	@Id
	@GeneratedValue	
	@Column(name="S_ID")
	private int studentid;
	
	
	public int getStudentid() {
		return studentid;
	}

	
	public String getFirstname() {
		return firstname;
	}

	
	 
	public String getLastname() {
		return lastname;
	}

	
	public String getEmail() {
		return email;
	}

	
	public String getYear() {
		return year;
	}

	
	public String getStandard() {
		return standard;
	}

	
	public String getSection() {
		return section;
	}

	
	public String getTypeofstudent() {
		return typeofstudent;
	}

	
	public String getDateofbirth() {
		return dateofbirth;
	}

	
	
	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}

	
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	
	public void setEmail(String email) {
		this.email = email;
	}

	
	public void setYear(String year) {
		this.year = year;
	}

	
	public void setStandard(String standard) {
		this.standard = standard;
	}

	
	public void setSection(String section) {
		this.section = section;
	}

	
	public void setTypeofstudent(String typeofstudent) {
		this.typeofstudent = typeofstudent;
	}

	
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	

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
	
	
	
	/*-----------------------hostler student fee structure---------------------*/
	
	@Column(name="totaltfee")
	private String totaltfee;
	
	@Column(name="totaltpaidfee")
	private String totaltpaidfee;
	 
	@Column(name="totaltduefee")
	private String totaltduefee;
	
	@Column(name="totalcfee")
	private String totalcfee;
	
	@Column(name="totalcpaidfee")
	private String totalcpaidfee;	
	
	@Column(name="totalcduefee")
	private String totalcduefee;
	
	@Column(name="totaldfee")
	private String totaldfee;
	
	@Column(name="totaldpaidfee")
	private String totaldpaidfee;
	
	@Column(name="totaldduefee")
	private String totaldduefee;
	
	@Column(name="status")
	private String status;

	
	public String getTotaltfee() {
		return totaltfee;
	}


	public void setTotaltfee(String totaltfee) {
		this.totaltfee = totaltfee;
	}


	public String getTotaltpaidfee() {
		return totaltpaidfee;
	}


	public void setTotaltpaidfee(String totaltpaidfee) {
		this.totaltpaidfee = totaltpaidfee;
	}


	public String getTotaltduefee() {
		return totaltduefee;
	}


	public void setTotaltduefee(String totaltduefee) {
		this.totaltduefee = totaltduefee;
	}


	public String getTotalcfee() {
		return totalcfee;
	}


	public void setTotalcfee(String totalcfee) {
		this.totalcfee = totalcfee;
	}


	public String getTotalcpaidfee() {
		return totalcpaidfee;
	}


	public void setTotalcpaidfee(String totalcpaidfee) {
		this.totalcpaidfee = totalcpaidfee;
	}


	public String getTotalcduefee() {
		return totalcduefee;
	}


	public void setTotalcduefee(String totalcduefee) {
		this.totalcduefee = totalcduefee;
	}


	public String getTotaldfee() {
		return totaldfee;
	}


	public void setTotaldfee(String totaldfee) {
		this.totaldfee = totaldfee;
	}


	public String getTotaldpaidfee() {
		return totaldpaidfee;
	}


	public void setTotaldpaidfee(String totaldpaidfee) {
		this.totaldpaidfee = totaldpaidfee;
	}


	public String getTotaldduefee() {
		return totaldduefee;
	}


	public void setTotaldduefee(String totaldduefee) {
		this.totaldduefee = totaldduefee;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}
	
	/*<-----------------daysholers fee-------------->*/

	@Column(name="totaltdfee")
	private String totaltdfee;
	
	@Column(name="totaltddfee")
	private String totaltddfee;
	 
	@Column(name="totaltdpfee")
	private String totaltdpfee;
	
	@Column(name="totalctfee")
	private String totalctfee;
	
	@Column(name="totalcpfee")
	private String totalcpfee;	
	
	@Column(name="totalcdfee")
	private String totalcdfee;
	
	@Column(name="vanStop")
	private String vanStop;
	
	@Column(name="totalvanfee")
	private String totalvanfee;
	
	@Column(name="vanterm1")
	private String vanterm1;
	
	@Column(name="vanterm2")
	private String vanterm2;
	
	@Column(name="vanterm3")
	private String vanterm3;
	
	@Column(name="vanpaidfee")
	private String vanpaidfee;
	
	@Column(name="vanduefee")
	private String vanduefee;
	
	
	@Column(name="status1")
	private String status1;


	public String getTotaltdfee() {
		return totaltdfee;
	}


	public void setTotaltdfee(String totaltdfee) {
		this.totaltdfee = totaltdfee;
	}


	public String getTotaltddfee() {
		return totaltddfee;
	}


	public void setTotaltddfee(String totaltddfee) {
		this.totaltddfee = totaltddfee;
	}


	public String getTotaltdpfee() {
		return totaltdpfee;
	}


	public void setTotaltdpfee(String totaltdpfee) {
		this.totaltdpfee = totaltdpfee;
	}


	public String getTotalctfee() {
		return totalctfee;
	}


	public void setTotalctfee(String totalctfee) {
		this.totalctfee = totalctfee;
	}


	public String getTotalcpfee() {
		return totalcpfee;
	}


	public void setTotalcpfee(String totalcpfee) {
		this.totalcpfee = totalcpfee;
	}


	public String getTotalcdfee() {
		return totalcdfee;
	}


	public void setTotalcdfee(String totalcdfee) {
		this.totalcdfee = totalcdfee;
	}


	public String getVanStop() {
		return vanStop;
	}


	public void setVanStop(String vanStop) {
		this.vanStop = vanStop;
	}


	public String getTotalvanfee() {
		return totalvanfee;
	}


	public void setTotalvanfee(String totalvanfee) {
		this.totalvanfee = totalvanfee;
	}


	public String getVanterm1() {
		return vanterm1;
	}


	public void setVanterm1(String vanterm1) {
		this.vanterm1 = vanterm1;
	}


	public String getVanterm2() {
		return vanterm2;
	}


	public void setVanterm2(String vanterm2) {
		this.vanterm2 = vanterm2;
	}


	public String getVanterm3() {
		return vanterm3;
	}


	public void setVanterm3(String vanterm3) {
		this.vanterm3 = vanterm3;
	}


	public String getVanpaidfee() {
		return vanpaidfee;
	}


	public void setVanpaidfee(String vanpaidfee) {
		this.vanpaidfee = vanpaidfee;
	}


	public String getVanduefee() {
		return vanduefee;
	}


	public void setVanduefee(String vanduefee) {
		this.vanduefee = vanduefee;
	}


	public String getStatus1() {
		return status1;
	}


	public void setStatus1(String status1) {
		this.status1 = status1;
	}

	
	
	
	
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * @param totalfee the totalfee to set
	 *//*
	
	
	public void setTotalfee(int totalfee) {
		this.totalfee = totalfee;
	}

	*//**
	 * @param dueAmount the dueAmount to set
	 *//*
	public void setDueAmount(int dueAmount) {
		this.dueAmount = dueAmount;
	}

	*//**
	 * @param paidAmount the paidAmount to set
	 *//*
	public void setPaidAmount(int paidAmount) {
		this.paidAmount = paidAmount;
	}

	*//**
	 * @param status the status to set
	 *//*
	public void setStatus(String status) {
		this.status = status;
	}

	
	
	@Column(name="totalfee")
	private int totalfee;
	
	@OneToOne(mappedBy="student", cascade=CascadeType.ALL)
	private StudentFee studentFee;

		
@Column(name="dueAmount")
	private int dueAmount;
	
	@Column(name="paidAmount")
	private int paidAmount;
	
	@Column(name="status")
	private String status;
	@Column(name="paidDate")
	private String paidDate;
	
	*//**
	 * @return the paidDate
	 *//*
	public String getPaidDate() {
		return paidDate;
	}

	*//**
	 * @param paidDate the paidDate to set
	 *//*
	public void setPaidDate(String paidDate) {
		this.paidDate = paidDate;
	}
	

	
	
	
	
	}

	*/