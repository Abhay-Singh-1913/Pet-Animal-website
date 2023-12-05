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
public class Donate {
    
    private String State;
    private String City;
   
    
    public Donate(String state,String city){
        State=state;City=city;
      
    }

    /**
     * @return the Name
     */
    public String getState() {
        return State;
    }

    /**
     * @param Name the Name to set
     */
    public void setState(String state) {
        State=state;
    }

    /**
     * @return the Mobile
     */
    public String getCity() {
        return City;
    }

    /**
     * @param Mobile the Mobile to set
     */
    public void setCity(String city) {
        City=city;
    }

    
}
