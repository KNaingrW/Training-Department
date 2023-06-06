package com.trainingprogram.utils;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.io.File;
import java.io.FileInputStream;
import java.util.Iterator;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.trainingprogram.model.Course;

import java.io.File;


public class ReadSheetUtils {
	
	public static List<Course> ReadCourse(String path){
		List<Course> courseList=new ArrayList<Course>(); 
		 try {
		      File file = new File(path);
		      
		      FileInputStream fis = new FileInputStream(file); 
		      XSSFWorkbook wb = new XSSFWorkbook(fis);
		      XSSFSheet sheet = wb.getSheetAt(0); 
		      Iterator < Row > itr = sheet.iterator();
		      int count=0;
		      while (itr.hasNext()) {
		        Row row = itr.next();
		        Iterator < Cell > cellIterator = row.cellIterator();
		        String coursename="";
		        double price=0;
		        count=count+1;
		        if(count==1) {
		        	continue;
		        } 
		        while (cellIterator.hasNext()) {
		       
		          Cell cell = cellIterator.next();
		          switch (cell.getCellType()) {
		          case Cell.CELL_TYPE_STRING:  
		        	  coursename=cell.getStringCellValue();
		            break;
		          case Cell.CELL_TYPE_NUMERIC: 
		        	  price=cell.getNumericCellValue();
		           
		            break;
		          default:
		          }
		        }
		        //System.out.println(coursename+" "+price);
		        courseList.add(new Course(coursename,price));
		       
		      }
		    }
		    catch(Exception e) {
		      e.printStackTrace();
		    }
		 return courseList;
		  
	}
	
	
		
		
}

