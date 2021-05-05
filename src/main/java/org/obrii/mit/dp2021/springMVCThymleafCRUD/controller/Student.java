package org.obrii.mit.dp2021.springMVCThymleafCRUD.controller;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import org.springframework.stereotype.Component;

@JsonIgnoreProperties(ignoreUnknown = true)
@Component
public class Student {
            
    private long id;
    
    private String name;
    
    private String email;   
    
    @JsonProperty("_links")
    private Links links;
    
    @JsonIgnore
    private String href;
    
   

    public Student() {
    }

    public Student(String name, String email) {
        this.name = name;
        this.email = email;
    }
    

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }


    @Override
    public String toString() {
        
        StringBuilder sb = new StringBuilder();
        
        sb.append("Student{id=").append(id);
        sb.append(", name=").append(name);
        sb.append(", email=").append(email);
        sb.append(", links=").append(links);
        sb.append(", href=").append(href);
        sb.append('}');
        return sb.toString();
    }

    

    public Links getLinks() {
        return links;
    }

    public String getHref() {
        return links.getSelf().getHref();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

  

   
    
    
    
    
}
