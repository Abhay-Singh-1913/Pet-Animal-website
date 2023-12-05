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
public class Dregistration {
    private String PatientDoctor;
       private String EmailId;
       
     public Dregistration(){
         
     }  
      public Dregistration(String emailId){
         EmailId=emailId;
     } 
    public String getEmailId() {
        return EmailId;
    }

    public void setEmailId(String EmailId) {
        this.EmailId=EmailId;
    }

    public String getPatientDoctor() {
        return PatientDoctor;
    }

    public void setPatientDoctor(String PatientDoctor) {
        this.PatientDoctor = PatientDoctor;
    }
}
