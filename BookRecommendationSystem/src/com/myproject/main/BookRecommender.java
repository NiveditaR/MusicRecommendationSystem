package com.myproject.main;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;

























import org.apache.mahout.cf.taste.common.TasteException;
//import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.common.LongPrimitiveIterator;
import org.apache.mahout.cf.taste.impl.model.file.FileDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.NearestNUserNeighborhood;
import org.apache.mahout.cf.taste.impl.neighborhood.ThresholdUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.CachingRecommender;
import org.apache.mahout.cf.taste.impl.recommender.GenericItemBasedRecommender;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.LogLikelihoodSimilarity;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.impl.similarity.TanimotoCoefficientSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.ItemBasedRecommender;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.Recommender;
import org.apache.mahout.cf.taste.recommender.UserBasedRecommender;
import org.apache.mahout.cf.taste.similarity.ItemSimilarity;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.jdbc.*;

import com.sun.org.apache.xml.internal.serialize.LineSeparator;

import java.sql.*;


public class BookRecommender implements InitializingBean{

	private static boolean initialized = false;

	private final static BookRecommender instance = new BookRecommender();
	private GenericItemBasedRecommender irecommender;
	
	private BookRecommender(){
		System.out.println("Music Recommendation called");
		
		
	}
	
	
		public String itembasedrecommendation(String itemname) {
					
			StringBuilder sb=new StringBuilder();
			long itemID=0;
			try {
				
				File file = new File("C:/Users/Nivedita/Desktop/Downloads/yahoodata/songnames.csv");
				FileReader fileReader = new FileReader(file);
				BufferedReader bufferedReader = new BufferedReader(fileReader);
				
							
				Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/songdata","root","root"); 
			Statement stmt=con.createStatement();  
  				 ResultSet rs1= stmt.executeQuery("select id from songmapping where name like '%"+itemname+"%';");
  				 if(rs1.next()){
  					
  						 itemID=rs1.getLong(1);
  						 System.out.println("item id: "+itemID);
  						 if (itemID==0)
  							 itemID=135351;
  							 
  				 }
  				 		
			ResultSet rs=stmt.executeQuery("select genrename, songid from (itembasedrec natural join songattributes) natural join genrehierarchy where songid=recitemid and itemid="+itemID+" and songattributes.genreid=genrehierarchy.genreid;");
			String line=bufferedReader.readLine();
			
			while(rs.next()){
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				sb.append(rs.getString(1));
				sb.append("- ");
				sb.append(rs.getString(2));
				//sb.append(line);
				sb.append(",");
				//line=bufferedReader.readLine();
			}
			
		
			con.close();
			
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			return sb.toString();
			
		}

		public String userbasedrecommendation(long userId){
			
			StringBuilder sb= new StringBuilder();
			Recommender cachingRecommender;
			try {
			
				File file = new File("C:/Users/Nivedita/Desktop/Downloads/yahoodata/songnames.csv");
				FileReader fileReader = new FileReader(file);
				BufferedReader bufferedReader = new BufferedReader(fileReader);
				
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con=DriverManager.getConnection(  
						"jdbc:mysql://localhost:3306/songdata","root","root"); 
				Statement stmt=con.createStatement();  
				
					ResultSet rs=stmt.executeQuery("select genrename, songid from (userbasedrec natural join songattributes) natural join genrehierarchy where songid=userrecitemid and userloginid="+userId+" and songattributes.genreid=genrehierarchy.genreid;");
					String line=bufferedReader.readLine();
					
					while(rs.next()){
						System.out.println(rs.getString(1));
						System.out.println(rs.getString(2));
						sb.append(rs.getString(1));
						sb.append("- ");
						sb.append(rs.getString(2));
						//sb.append(line);
						sb.append(",");
						//line=bufferedReader.readLine();
					}
					
					
					con.close();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				
				e.printStackTrace();
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return sb.toString();
				
	} 

		
		public static BookRecommender getInstance() {
			return instance;
		}


		@Override
		public void afterPropertiesSet() throws Exception {
			// TODO Auto-generated method stub
			
		}


		public StringBuilder getGenres() {
			// TODO Auto-generated method stub
			StringBuilder sb= new StringBuilder();
			ResultSet rs;
			try {
				Class.forName("com.mysql.jdbc.Driver");
			
			
			Connection con=DriverManager.getConnection(  
					"jdbc:mysql://localhost:3306/songdata","root","root"); 
			Statement stmt=con.createStatement();  
			
				rs=stmt.executeQuery("select distinct genrename from genrehierarchy;");
									
				
				while(rs.next()){
					System.out.println(rs.getString(1));
					sb.append(rs.getString(1));
					sb.append(",");
					
				}

				con.close();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			return sb;
		}


		
	
}
