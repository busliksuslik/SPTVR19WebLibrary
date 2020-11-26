/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entites;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import interfaces.EntityInterface;

/**
 *
 * @author user
 */
@Entity
public class Book implements Serializable, EntityInterface{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String author;
    private int year;

    public Book() {
    }

    @Override
    public Long getId() {
        return id;
    }

    @Override
    public void setId(Long id) {
        this.id = id;
    }
    

    public Book(String name, String author, int year) {
        this.name   = name;
        this.author = author;
        this.year   = year;
    }

    public String getName() {
        return name;
    }

    public String getPrice() {
        return author;
    }

    public int getAmount() {
        return year;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPrice(int price) {
        this.author = author;
    }

    public void setAmount(int amount) {
        this.year = amount;
    }

    @Override
    public String toString() {
        return "name=" + name + ", author=" + author + ", year=" + year;
    }
    
    
}
