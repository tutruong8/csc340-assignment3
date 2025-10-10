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

    @GetMapping("/animal")
    public Object getAllAnimals() {
        return animalService.getAllAnimals();
    }

    @GetMapping("/animal/{id}")
    public Object getAnimalById(@PathVariable long id) {
        return animalService.getAnimalById(id);
    }

    @GetMapping("/animal/name")
    public Object getAnimalByName(@RequestParam String name) {
        if (name != null) {
            return animalService.getAnimalByName(name);
        } else {
            return animalService.getAllAnimals();
        }
    }

    @GetMapping("/animal/species/{species}")
    public Object getAnimalBySpecies(@PathVariable String species) {
        if (species != null) {
            return animalService.getAnimalBySpecies(species);
        } else {
            return animalService.getAllAnimals();
        }
    }

    @GetMapping("/animal/status/{status}")
    public Object getAnimalByStatus(@PathVariable String status) {
        if (status != null) {
            return animalService.getAnimalByStatus(status);
        } else {
            return animalService.getAllAnimals();
        }
    }

    @PostMapping("/animal")
    public Object createAnimal(@RequestBody Animal animal) {
        return animalService.createAnimal(animal);
    }

    @PutMapping("/animal/{id}")
    public Animal updateAnimal(@PathVariable Long id, @RequestBody Animal animal) {
        return animalService.updateAnimal(id, animal);
    }

    @DeleteMapping("/animal/{id}")
    public Object deleteAnimal(@PathVariable Long id) {
        animalService.deleteAnimal(id);
        return animalService.getAllAnimals();
    }

    @PostMapping("/animal/write")
    public Object writeJson(@RequestBody Animal animal) throws IOException {
        return animalService.writeJson(animal);
    }

    @PostMapping("/animal/read")
    public Object readJson() throws IOException {
        return animalService.readJson();
    }

}

