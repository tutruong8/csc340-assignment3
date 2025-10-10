package csc340.tucrudapi.animal;

import java.util.*;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "animals")
public class Animal {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long animalId;

  @Column(nullable = false)
  private String name; //Name of the animal
  private String description; //Describe the animal
  private String species; //Is it a snake? bird? fish? mammal?
  private String status; //is it endangered? extinct? alive? 

  //Constructors
    public Animal(){}

    public Animal(Long animalId, String name, String description, String species, String status) {
        this.animalId = animalId;
        this.name = name;
        this.description = description;
        this.species = species;
        this.status = status;
    }

    public Animal(String name, String description, String species, String status) {
        this.name = name;
        this.description = description;
        this.species = species;
        this.status = status;
    }


  //Getters and setters
    //Animal ID
    public Long getAnimalId() { return animalId;}
    public void setAnimalId(Long animalId) { this.animalId = animalId;}

    //Name
    public String getName() { return name;}
    public void setName(String name) { this.name = name;}

    //Description
    public String getDescription() { return description;}
    public void setDescription(String description) { this.description = description;}

    //Species
    public String getSpecies() { return species;}
    public void setSpecies(String species) { this.species = species;}

    //Status
    public String getStatus() { return status;}
    public void setStatus(String status) { this.status = status;}
}
