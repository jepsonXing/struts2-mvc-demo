package selab2.action;

import java.sql.SQLException;

import selab2.dao.DAObj;
import selab2.model.*;

import com.opensymphony.xwork2.ActionSupport;

public class Info extends ActionSupport  {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3061222275653472155L;
	
	private DAObj dao =  DAObj.getIns();
	private String isbn;
    private String authorid;
    private Writers author;
    private Works book;
    
    public Works getBook()
    {
    	return book;
    }
    
    public Writers getAuthor()
    {
    	return author;
    }
    
    public String getIsbn()
    {
    	return isbn;
    }
    
    public void setIsbn(String isbn)
    {
    	this.isbn = isbn;
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
		book = dao.getWork(isbn);
        author = dao.getWriter(isbn);
        return SUCCESS;
    }
}
