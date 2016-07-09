package com.fee.controller;

import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fee.domain.Login;
import com.fee.domain.Student;
import com.fee.domain.StudentFee;
import com.fee.service.StudentService;




@Controller
@RequestMapping("/Student")
public class StudentController {
	@Autowired(required = true)
	public StudentService studentservice;
	
	//Links	
		// For Login
	@RequestMapping(value="/Login")
	public String getloginpage()
	{
		System.out.println("Forward message...");
		return "login";
	}
	//For Return Homepage
	@RequestMapping(value="/home")
	public String getHomepage()
	{
		System.out.println("Home Page...");
		return "home";


	}
		//For StudentEntry page
		@RequestMapping(value="/StudentEntry")
		public String getStudentEntry()
		{
			return "StudentEntry";
		}
		
		//for Studentlist page
		@RequestMapping(value="/list")
		public ModelAndView getList() {
			  List studentList = studentservice.getList();
			  return new ModelAndView("list", "studentList", studentList);
			 }
		
		 @RequestMapping("/updatedetails")
		 public ModelAndView updatestudentdetails(@RequestParam int studentid,
		   @ModelAttribute Student stud) {
			 Student received =studentservice.getRowById(studentid);
		  return new ModelAndView("updatesdetails", "received", received);
		 }
		
		 
		 @RequestMapping("/updateStudent")
			public ModelAndView updateStudent(Map<String, Object> model, @ModelAttribute Student student) {
				System.out.println(student.getStudentid());
					studentservice.updateRow(student);
					model.put("msg", "Record is Updated Succefully....");
					//System.out.println(" controller status");
		  return new ModelAndView("StudentEntry");
			}
		 
		 
		 
		//for StudentfeeEntryForm page
		@RequestMapping(value="/StudentfeeEntryForm")
		public String getStudentfeeEntryForm(){
			return "StudentfeeEntryForm";
		}
		 //for StudentfeeEntry list1page
		@RequestMapping(value="/list1")
	    public String getlist1()
		{
			return "list1";
		}
		
		
		
		
		
		
		// Methods
		
		@RequestMapping(value = "/checklogin")
		public String checklogin(Map<String, Object> model,@ModelAttribute("login")Login login)
		{
			//Login login1=new Login(); 
			
			//String username=login1.getUsername();
			//String password=login1.getPassword();
			
			int check = studentservice.checkLogin(login.getUsername(),login.getPassword());
		if(check == 1){
			model.put("user", login.getUsername());
			return "home";
		}else{
			model.put("msg", "Please Enter Valid Details...");
			return "login";
		}
		}
		
		
		@RequestMapping(value ="/saveStudent")
		public String saveStudent(Map<String, Object> model,@ModelAttribute("student")Student student){
			boolean flag = false;
			flag = studentservice.saveStudent(student);
			if(flag)
				model.put("msg", "Record is Stored Succefully....");
			else
				model.put("msg", "Record is Not Stored Succefully.... Try Again");
			return "StudentEntry";
		}
		
		
		
		


		@RequestMapping(value="/saveStudentFee")
		public String saveStudentFee(Map<String, Object> model,@ModelAttribute("studentfee")StudentFee studentfee){
			boolean flag = false;
			flag = studentservice.saveStudentFee(studentfee);
			if (flag) if(flag)
				model.put("msg", "Record is Stored Succefully....");
			else
				model.put("msg", "Record is Not Stored Succefully.... Try Again");
			return "StudentfeeEntryForm";
		}
		
		@RequestMapping("/viewdetails")
		public ModelAndView viewstudentdetails(@RequestParam int studentid,
				@ModelAttribute Student stud)
		{
			Student received =studentservice.getRowById(studentid);
			if("Dayscholer".equalsIgnoreCase(received.getTypeofstudent())){
				
				return new ModelAndView("viewdayscholerdetails", "received", received);
			}				 
			else {
				return new ModelAndView("viewhostlerdetails", "received", received);
			}


		}
		
		/*@RequestMapping(value = "/admission")
		public ModelAndView dailycomplaintreport(ModelAndView modelAndView,
				@RequestParam("")
				String organization, @RequestParam("status")
				String status, @RequestParam("currentDate")
				String currentDate) {
			Map<String, Object> parameterMap = new HashMap<String, Object>();
			Collection<?> getList;
List<Student> getList = StudentService.getadmission(organization, status, currentDate);
			JRDataSource JRdataSource = new JRBeanCollectionDataSource(null);
			parameterMap.put("datasource", JRdataSource);
			modelAndView = new ModelAndView("admission", parameterMap);

			return modelAndView;
		}*/
		@RequestMapping(value="/Logout")
		public String logout(Map<String, Object> model){
			System.out.println("Sessions Closing...");
			model.put("msg", "Your Successfully Logged out...");
			System.gc();
			return "login";
		}
		
		
}

	
