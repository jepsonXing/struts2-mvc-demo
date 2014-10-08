package selab2.action;

import java.sql.SQLException;
import java.util.List;

import selab2.dao.DAObj;
import selab2.model.*;

import com.opensymphony.xwork2.ActionSupport;

public class Getworks extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3943210826003605144L;
		
	private DAObj dao =  DAObj.getIns();
	private String authorid;
	private List<Works> books;
	
	public List<Works> getBooks()
    {
    	return books;
    }
	
	public String getAuthorid()
    {
    	return authorid;
    }
	
	public void setAuthorid(String authorid)
	{
		this.authorid = authorid;
	}
	
	public String execute()  throws SQLException{
		books = dao.getWorks(authorid);
    	return SUCCESS;
    }
}
