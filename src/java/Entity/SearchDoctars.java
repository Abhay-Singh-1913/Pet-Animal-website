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
public class SearchDoctars {
    private String State;
    private String City;
    
    public SearchDoctars (){}
    public SearchDoctars( String state,String city){
        State=state;City=city;
    }
    public String getState() {
        return State;
    }

    public void setFullName(String State) {
        this.State = State;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String City) {
        this.City = City;
    }
}
