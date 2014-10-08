package selab2.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import selab2.model.*;

public class DAObj {
	private static final DAObj ins; 
	private Connection dblink;

	public DAObj() {}
	
	static {
        ins = new DAObj();
	}
	
	public static DAObj getIns() {
        return ins;
    }
	
	public Connection getLink(){
        try {  
            Class.forName("com.mysql.jdbc.Driver");  
            dblink = DriverManager.getConnection("jdbc:mysql://localhost:3306/struts", "root", "");  
            if (!dblink.isClosed()) System.out.println("DB-Connect Success");  
            if (dblink == null) System.out.println("DB-Connect Fail");  
        } catch (ClassNotFoundException e) {  
            e.printStackTrace();  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }  
        return dblink;
	}

	public Works getWork(String isbn) throws SQLException {
    	Connection dblink=getLink();
		Statement s = dblink.createStatement();
		ResultSet res = s.executeQuery("SELECT * FROM book WHERE ISBN='" + isbn + "'");
		
		Works ret = null;
		while (res.next())
			ret = new Works(isbn,res.getString("Title"),res.getString("AuthorID"),res.getString("Publisher"),res.getString("PublishDate"),res.getString("Price"));
		try{
			if (s != null) s.close();
			if (dblink != null) dblink.close();
		} catch (SQLException e){
			e.printStackTrace();
		}
		return ret;
    }
	
	public List<Works> getWorks(String authorid) throws SQLException {
		Connection dblink=getLink();
		Statement s = dblink.createStatement();
		ResultSet res = s.executeQuery("SELECT * FROM book WHERE AuthorID='" + authorid + "'");
		
		List<Works> ret = new ArrayList<Works>();
		while (res.next())
			ret.add(new Works(res.getString("ISBN"),res.getString("Title"),res.getString("Publisher"),res.getString("PublishDate"),res.getString("PublishDate"),res.getString("Price")));
		try{
			if (s != null) s.close();
			if (dblink != null) dblink.close();
		} catch (SQLException e){
			e.printStackTrace();
		}
		return ret;
    }
    
	public List<Works> getWorks() throws SQLException {
		Connection dblink=getLink();
		Statement s = dblink.createStatement();
		ResultSet res = s.executeQuery("SELECT * FROM book");
		
		List<Works> ret = new ArrayList<Works>();
		while (res.next())
			ret.add(new Works(res.getString("ISBN"),res.getString("Title"),res.getString("AuthorID"),res.getString("Publisher"),res.getString("PublishDate"),res.getString("Price")));
		try{
			if (s != null) s.close();
			if (dblink != null) dblink.close();
		} catch (SQLException e){
			e.printStackTrace();
		}
		return ret;
    }
	
    public void deleteWork(String isbn) throws SQLException {
    	Connection dblink=getLink();
		Statement s = dblink.createStatement();
		s.executeUpdate("DELETE FROM book WHERE ISBN='"+isbn+"'");
		try{
			if (s != null) s.close();
			if (dblink != null) dblink.close();
		} catch (SQLException e){
			e.printStackTrace();
		}
    }
    
    public Writers getWriter(String isbn) throws SQLException {
    	Connection dblink=getLink();
		Statement s = dblink.createStatement();
		ResultSet res = s.executeQuery("SELECT * FROM author where authorid=(select authorid from book where ISBN='" + isbn + "')");
		
		Writers ret = null;
		while (res.next())
			ret = new Writers(res.getString("AuthorID"),res.getString("Age"),res.getString("Country"));
		try{
			if (s != null) s.close();
			if (dblink != null) dblink.close();
		} catch (SQLException e){
			e.printStackTrace();
		}
		return ret;
    }
}