package csc340.tucrudapi.animal;

import java.util.*;
import java.io.IOException;
import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class AnimalService {
    @Autowired
    private AnimalRepo animalRepo;

    /**
   * Method to get all animals in the database
   * @return list of animals in database
   */
    public List<Animal> getAllAnimals() {
        return animalRepo.findAll();
    }

    /**
   * Method to get animal by ID in the database
   * @param id ID of the animal to get
   * @return animal with the specified ID
   */
    public Object getAnimalById(@PathVariable long id) {
        return animalRepo.findById(id).orElse(null);
    }

    /**
   * Method to get animal by name in the database
   * @param name Name of the animal to get
   * @return animal with the specified name
   */
    public Object getAnimalByName(String name) {
        return animalRepo.getAnimalbyName(name);
    }

    /**
   * Method to get animal by species in the database
   * @param species Species of the animal to get
   * @return animal with the specified species
   */
    public Object getAnimalBySpecies(String species) {
        return animalRepo.getAnimalbySpecies(species);
    }

    /**
   * Method to get animal by status in the database
   * @param status Status of the animal to get
   * @return animal with the specified status
   */
    public Object getAnimalByStatus(String status) {
        return animalRepo.getAnimalbyStatus(status);
    }

    /**
   * Method to create new animal in the database
   * @param animal Animal to create
   * @return created animal
   */
    public Animal createAnimal(Animal animal) {
        return animalRepo.save(animal);
    }

    /**
   * Method to update animal in the database
   * @param animal Animal to update
   * @return updated animal
   */
    public Animal updateAnimal(Long id, Animal animal) {
        animal.setAnimalId(id);
        return animalRepo.save(animal);
    }

    /**
   * Method to delete animal in the database
   * @param animal Animal to delete
   */
    public void deleteAnimal(Long id) {
        animalRepo.deleteById(id);
    }

    /**
   * Method to write animal to JSON file
   * @param animal Animal to write
   */
    public String writeJson(Animal animal) throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(new File("animal.json"), animal);
        return "Animal has been written to JSON file";
    }

    /**
   * Method to read animal in the database
   * @param animal Animal to read
   * @return contents in JSON
   */
    public Animal readJson() throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        return mapper.readValue(new File("animal.json"), Animal.class);
    }
}
