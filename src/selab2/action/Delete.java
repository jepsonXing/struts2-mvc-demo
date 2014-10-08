package selab2.action;

import java.sql.SQLException;

import selab2.dao.DAObj;

import com.opensymphony.xwork2.ActionSupport;

public class Delete extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 3943210826003605144L;
		
	private DAObj dao =  DAObj.getIns();
	private String isbn;
	
	public String getIsbn()
    {
    	return isbn;
    }
	
	public void setIsbn(String isbn)
	{
		this.isbn=isbn;
	}
	
	public String execute() throws SQLException{
	    if(isbn != null) dao.deleteWork(isbn);
        return SUCCESS;
    }
}
