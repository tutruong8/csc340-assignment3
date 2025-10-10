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

    public List<Animal> getAllAnimals() {
        return animalRepo.findAll();
    }

    public Object getAnimalById(@PathVariable long id) {
        return animalRepo.findById(id).orElse(null);
    }

    public Object getAnimalByName(String name) {
        return animalRepo.getAnimalbyName(name);
    }

    public Object getAnimalBySpecies(String species) {
        return animalRepo.getAnimalbySpecies(species);
    }

    public Object getAnimalByStatus(String status) {
        return animalRepo.getAnimalbyStatus(status);
    }

    public Animal createAnimal(Animal animal) {
        return animalRepo.save(animal);
    }

    public Animal updateAnimal(Long id, Animal animal) {
        animal.setAnimalId(id);
        return animalRepo.save(animal);
    }

    public void deleteAnimal(Long id) {
        animalRepo.deleteById(id);
    }

    public String writeJson(Animal animal) throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        mapper.writeValue(new File("animal.json"), animal);
        return "Animal has been written to JSON file";
    }

    public Animal readJson() throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        return mapper.readValue(new File("animal.json"), Animal.class);
    }
}
