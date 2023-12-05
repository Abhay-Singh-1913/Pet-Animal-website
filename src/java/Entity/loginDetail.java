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
public class loginDetail {
  private String FullName;
  private String EmailId;
  private String Mobile;
  private String FullAddress;
  private String Image;
  private String Password;

    
    public loginDetail() {
       //To change body of generated methods, choose Tools | Templates.
    }
  public loginDetail(String fullName,String emailId,String mobile,String fullAddress,String image,String password){
       FullName=fullName;EmailId=emailId;Mobile=mobile;
       FullAddress=fullAddress;Image=image;
       Password=password;
       
   } 

    

    public loginDetail(String fullName,String emailId,String mobile,String fullAddress,String image) {
        FullName=fullName;EmailId=emailId;Mobile=mobile;
       FullAddress=fullAddress;Image=image;
    }

    public String getFullName() {
        return FullName;
    }

    public void setFullName(String FullName) {
        this.FullName = FullName;
    }

    public String getEmailId() {
        return EmailId;
    }

    public void setEmailId(String EmailId) {
        this.EmailId = EmailId;
    }

    public String getMobile() {
        return Mobile;
    }

    public void setMobile(String Mobile) {
        this.Mobile = Mobile;
    }

    public String getFullAddress() {
        return FullAddress;
    }

    public void setFullAddress(String FullAddress) {
        this.FullAddress = FullAddress;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }


    
}
