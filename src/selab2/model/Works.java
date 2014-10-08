package selab2.model;

public class Works {
    private String isbn,title,authorid,publisher,publishdate,price;
    
    public Works() {        
    }
    
    public Works(String isbn, String title, String authorid, String publisher, String publishdate, String price) {
        this.isbn = isbn;
        this.title = title;
        this.authorid = authorid;
        this.publisher = publisher;
        this.publishdate = publishdate;
        this.price = price;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }    

    public String getAuthorid() {
        return authorid;
    }

    public void setAuthorid(String authorid) {
        this.authorid = authorid;
    }
    
    public String getPublisher() {
        return publisher;
    }

    public void setPublisher(String publisher) {
        this.publisher = publisher;
    }
    public String getPublishdate() {
        return publishdate;
    }

    public void setPublishdate(String publishdate) {
        this.publishdate = publishdate;
    }
    
    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}