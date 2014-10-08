package selab2.model;

public class Writers {
    private String authorid,age,country;
    
    public Writers() {        
    }
    
    public Writers(String authorid, String age, String country) {
        this.authorid = authorid;
        this.age = age;
        this.country = country;
    }

    public String getAuthorid() {
        return authorid;
    }

    public void setAuthorid(String authorid) {
        this.authorid = authorid;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }    

    public String getCountry() {
        return country;
    }
    
    public void setCountry(String country){
    	this.country = country;
    }
}