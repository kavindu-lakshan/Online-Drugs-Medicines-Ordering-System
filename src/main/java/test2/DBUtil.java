package test2;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;





public class DBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet rs = null;
	private static PreparedStatement ps =null;
	
	
	public static boolean Validate(String username, String password) {
		try {
			con = DBconnect.getConnection();
			stat = con.createStatement();
			String sql = "select * from manufacturer where ComUsername = '"+username+"' and ComPassword = '"+password+"'";
			rs = stat.executeQuery(sql);
			if(rs.next()) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	public static List<Manufacturer> getManufacturer(String username){
		
		ArrayList <Manufacturer> Manufacturer = new ArrayList<>();
		
		
		try {
			con = DBconnect.getConnection();
			stat = con.createStatement();
			String sql = "select * from manufacturer where ComUsername = '"+username+"'";
			
			rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String Bname = rs.getString(2);
				String Aname = rs.getString(3);
				String pnum = rs.getString(4);
				String email = rs.getString(5);
				String address = rs.getString(6);
				String Uname = rs.getString(7);
				String Upw = rs.getString(8);
				
				Manufacturer u = new Manufacturer(id, Bname, Aname, pnum, email, address, Uname, Upw);
				Manufacturer.add(u);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return Manufacturer;
		
	}


	public static boolean insertMedicine(int id, String Mname, String form, float strength, double price) {
		boolean isSuccess = false;
	
	
		try {
		
			con = DBconnect.getConnection();
			stat = con.createStatement();
			String sql = "insert into medicine values('"+Mname+"','"+form+"','"+strength+"','"+price+"','"+id+"')";
		
			int rs =stat.executeUpdate(sql);
		
			if(rs > 0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		
		}catch(Exception e){
			e.printStackTrace();
		}
	
		return isSuccess;
	}
	
	public  List<Medicine> DisplayMedDetails(int id){
		
		ArrayList <Medicine> list = new ArrayList<>();
		
		try {
			con = DBconnect.getConnection();
			
			String sql = "select * from medicine where ManuID = '"+id+"'";
			
			ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery(sql);
			
			while(rs.next()) {
			
				Medicine m = new Medicine();
				String mname = rs.getString(1);
				String form = rs.getString(2);
				float str = rs.getFloat(3);
				double pr = rs.getDouble(4);
				int iid = rs.getInt(5);
				
				m.setMedName(mname);
				m.setForm(form);
				m.setStrength(str);
				m.setPrice(pr);
				m.setId(iid);
				
				
				list.add(m);
			}
		
				
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		return list;
	}

	
	public static List<Medicine> getMedicine(int id){
		
		ArrayList <Medicine> Med = new ArrayList<>();
		
		
		try {
			con = DBconnect.getConnection();
			stat = con.createStatement();
			String sql = "select * from medicine where ManuID = '"+id+"'";
			
			rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				String mname = rs.getString(1);
				String form = rs.getString(2);
				float str = rs.getFloat(3);
				double pr = rs.getDouble(4);
				int muid = rs.getInt(5);
				
				Medicine me = new Medicine(muid,mname,form,str,pr);
				Med.add(me);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return Med;
		
		
		
	}
	
	
	
	public static boolean deleteMedicinelist(int id, String Mname, String form, float str) {
		
			
			try {
			
				con = DBconnect.getConnection();
				stat = con.createStatement();
			
				String sql = "delete from medicine where MedName = '"+Mname+"' and ManuID = '"+id+"' and Form = '"+form+"' and Strength = '"+str+"' ";
				int rs = stat.executeUpdate(sql);
			
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
			
			}catch(Exception e) {
				e.printStackTrace();
			}
		
			return isSuccess;
	}
	
	
	
	
	
	public static List<Medicine> showMedDetails(int id, String Mname, String form, float str){
		 
		
		ArrayList<Medicine> Med = new ArrayList<>();
		
		try {
			
			con = DBconnect.getConnection();
			stat = con.createStatement();
			
			String sql = "select * from medicine where  MedName = '"+Mname+"' and ManuID = '"+id+"' and Form = '"+form+"' and Strength = '"+str+"'";
			
			rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				
				String mname = rs.getString(1);
				int mmid = rs.getInt(5);
				String mform = rs.getString(2);
				float mstr = rs.getFloat(3);
				double pr = rs.getDouble(4);
				
				Medicine me = new Medicine(mmid,mname,mform,mstr,pr);
				Med.add(me);
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return Med;
		
	}	
	
	
	public static boolean UpdateMedDetails(int id, String mname, String form, float str, double pr) {
		
		try {
			
				con = DBconnect.getConnection();
				stat = con.createStatement();
				
				String sql = "update medicine set  Price = '"+pr+"'" + "where MedName = '"+mname+"' and ManuID = '"+id+"' and Form = '"+form+"' and Strength = '"+str+"'";
				
				int rs = stat.executeUpdate(sql);
				
				if(rs > 0) {
					isSuccess = true;
				}else {
					isSuccess = false;
				}
				
		}catch(Exception e) {
			e.printStackTrace();
		}
	
		return isSuccess;
	}


}









