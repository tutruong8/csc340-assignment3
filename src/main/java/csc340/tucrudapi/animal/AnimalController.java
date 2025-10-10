package csc340.tucrudapi.animal;

import java.io.IOException;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AnimalController {
    @Autowired
    private AnimalService animalService;

    /**
   * Endpoint to get all animals in the database
   *
   * @return List of all animals in the database
   */
    @GetMapping("/animal")
    public Object getAllAnimals() {
        return animalService.getAllAnimals();
    }

    /**
   * Endpoint to get the ID of a animal in the database
   * @param id ID of the animal to get
   * @return The animal with the wanted ID
   */
    @GetMapping("/animal/{id}")
    public Object getAnimalById(@PathVariable long id) {
        return animalService.getAnimalById(id);
    }

    /**
   * Endpoint to get the name of a animal in the database
   * @param name Name of the animal to get
   * @return The animal with the wanted name
   */
    @GetMapping("/animal/name")
    public Object getAnimalByName(@RequestParam String name) {
        if (name != null) {
            return animalService.getAnimalByName(name);
        } else {
            return animalService.getAllAnimals();
        }
    }

    /**
   * Endpoint to get the species of a animal in the database
   * @param species Species of the animal to get
   * @return The animal with the wanted species
   */
    @GetMapping("/animal/species/{species}")
    public Object getAnimalBySpecies(@PathVariable String species) {
        if (species != null) {
            return animalService.getAnimalBySpecies(species);
        } else {
            return animalService.getAllAnimals();
        }
    }

    /**
   * Endpoint to get the status of a animal in the database
   * @param status Status of the animal to get
   * @return The animal with the wanted status
   */
    @GetMapping("/animal/status/{status}")
    public Object getAnimalByStatus(@PathVariable String status) {
        if (status != null) {
            return animalService.getAnimalByStatus(status);
        } else {
            return animalService.getAllAnimals();
        }
    }

    /**
   * Endpoint to create/add a animal in the database
   * @param animal Animal to add
   * @return added animal
   */
    @PostMapping("/animal")
    public Object createAnimal(@RequestBody Animal animal) {
        return animalService.createAnimal(animal);
    }

    /**
   * Endpoint to update a animal in the database
   * @param id ID of the animal to update
   * @param animal Animal to update
   * @return updated animal
   */
    @PutMapping("/animal/{id}")
    public Animal updateAnimal(@PathVariable Long id, @RequestBody Animal animal) {
        return animalService.updateAnimal(id, animal);
    }

    /**
   * Endpoint to delete a animal in the database
   * @param id ID of the animal to delete
   * @return list of animals in database after deletion
   */
    @DeleteMapping("/animal/{id}")
    public Object deleteAnimal(@PathVariable Long id) {
        animalService.deleteAnimal(id);
        return animalService.getAllAnimals();
    }

    /**
   * Endpoint to write animal in JSON file
   * @param animal Animal to write
   * @return success message (empty string if successful)
   */
    @PostMapping("/animal/write")
    public Object writeJson(@RequestBody Animal animal) throws IOException {
        return animalService.writeJson(animal);
    }

    /**
   * Endpoint read Animal JSON file contents
   * @return contents in JSON
   */
    @PostMapping("/animal/read")
    public Object readJson() throws IOException {
        return animalService.readJson();
    }

}

