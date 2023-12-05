/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

/**
 *
 * @author harish shaikh
 */
public class SNotification {
     private String AnimalName;
     private String Aname;
     private String Aemail;
     private String Amobile;
     private String Aaddress;
    
    public SNotification(){
        
    }

    public SNotification(String an, String An, String ae, String am, String aa) {
        AnimalName=an;Aname=An;Aemail=ae;Amobile=am;Aaddress=aa;
    }
    
    public String getAnimalName() {
        return AnimalName;
    }
    public String getAname() {
        return Aname;
    }
    public String getAemail() {
        return Aemail;
    }
    public String getAmobile() {
        return Amobile;
    }
    public String getAaddress() {
        return Aaddress;
    }

    public void setAnimalName(String an) {
        AnimalName = an;
    }
}
