package com.fee.views;

import java.io.OutputStream;
import java.util.List;

import com.fee.domain.Student;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;


public class StudentPdfBuilder {
	public void writePdf(OutputStream outputStream,List<Student> getList ){
		System.out.println("write pdf");
		  Document document = new Document(PageSize.A4.rotate());
		  
		  Integer count = 0;
		  
		  
		  try{
		    PdfWriter.getInstance(document,outputStream); // Code 2
		    
		   /* Paragraph para=new Paragraph();
	        para.setAlignment(Element.ALIGN_CENTER);
	        Chunk chunk=new Chunk("SALARY SHEET-AIRBUS PROJECT");
	        document.add(Chunk.NEWLINE);
	        Chunk chunk1=new Chunk("SALARY SHEET FOR The MONTH OF");*/
		    
		    
		    document.open();
			 Paragraph para=new Paragraph();
			 para.setAlignment(Element.ALIGN_CENTER);
			 Font font1 = new Font(FontFamily.HELVETICA, 12, Font.BOLD, BaseColor.BLACK);
			 //Font font2 = new Font(FontFamily.HELVETICA, 14, Font.BOLD, BaseColor.BLACK);
	        Chunk chunk = new Chunk("A.E.C.S. Maaruti Public School, Bangalore-76",font1);
	        para.add(chunk);
				
	        para.add(Chunk.NEWLINE);
					para.add(Chunk.NEWLINE);
					Chunk chunk2 = new Chunk("Student  List" , font1);
					
					 para.add(chunk2);
					 para.add(Chunk.NEWLINE);
					 para.add(Chunk.NEWLINE);
					document.add(para);	
		    
		    document.addTitle("Test PDF");
	        document.addSubject("Testing email PDF");
	        document.addKeywords("iText, email");
	        document.addAuthor("Jee Vang");
	        document.addCreator("Jee Vang");
	         
	        
	        
		  
		    PdfPTable table1 = new PdfPTable(10);
		    
		     table1.setWidthPercentage(100);
		     
		              table1.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
		              table1.getDefaultCell().setVerticalAlignment(Element.ALIGN_MIDDLE);
		              table1.getDefaultCell().setFixedHeight(20);
		              table1.getDefaultCell().setBackgroundColor(BaseColor.CYAN);
		   
		              table1.addCell("Sno");
		              table1.addCell("First Name");
		 		     table1.addCell("Last Name");
		 		     table1.addCell("Email");
		 		    table1.addCell("Year");
		 		    table1.addCell("Standard");
		 		   table1.addCell("Section");
		 		  table1.addCell("Type of Student");
		 		table1.addCell("Total Fee");
		 		 table1.addCell("Paid Amount");
			 		table1.addCell("Paid Date");
			 		table1.addCell("due Amount");
			 		table1.addCell("Status");
		 		 
		 		
		     
		      document.add(table1);
		//System.out.println(li.size());
		  PdfPTable table2 = new PdfPTable(10);
			    
			     table2.setWidthPercentage(100);
			     
			              table2.getDefaultCell().setHorizontalAlignment(Element.ALIGN_CENTER);
			              table2.getDefaultCell().setVerticalAlignment(Element.ALIGN_MIDDLE);
			              table2.getDefaultCell().setFixedHeight(40);
			              //table2.getDefaultCell().setBackgroundColor(BaseColor.CYAN);
			              System.out.println("1");
			         
					for(Student f: getList)
			      	    {        
			        	// System.out.println("4");
			         count = count+1;     
			     //table2.addCell(count.toString());
			
			     table2.addCell(f.getFirstname());
			     table2.addCell(f.getLastname());
			     table2.addCell(f.getYear().toString());
			     table2.addCell(f.getEmail());
			     table2.addCell(f.getStandard());
			     table2.addCell(f.getSection());
			     table2.addCell(f.getTypeofstudent().toString());
			  /*  table2.addCell(f.getTotalfee());
			     table2.addCell(f.getDueAmount());
			     table2.addCell(f.getPaidAmount());*/
			     table2.addCell(f.getStatus());
			  
			
			    
			      	  }
			         document.add(table2);
		      document.close();
		            
		    
		  }catch(Exception e)
		  {
			  e.printStackTrace();
		  }
		
	}


}
