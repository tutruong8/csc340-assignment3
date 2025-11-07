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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

@Controller
public class AnimalController {
    @Autowired
    private AnimalService animalService;

    /**
   * Endpoint to get all animals in the database
   *
   * @return List of all animals in the database
   */
    @GetMapping("/animal")
    public Object getAllAnimals(Model model) {
        model.addAttribute("animals", animalService.getAllAnimals());
        model.addAttribute("title", "Animal List");
        return "animal-list";
    }

    /**
   * Endpoint to get the ID of a animal in the database
   * @param id ID of the animal to get
   * @return The animal with the wanted ID
   */
    @GetMapping("/animal/{id}")
    public Object getAnimalById(@PathVariable long id, Model model) {
        model.addAttribute("animal", animalService.getAnimalById(id));
        model.addAttribute("title", "Animal #" + id);
        return "animal-details";
    }

    /**
   * Endpoint to get the name of a animal in the database
   * @param name Name of the animal to get
   * @return The animal with the wanted name
   */
    @GetMapping("/animal/name")
    public Object getAnimalByName(@RequestParam String name, Model model) {
        if (name != null) {
            model.addAttribute("animal", animalService.getAnimalByName(name));
            model.addAttribute("title", "Animal by Name: " + name);
            return "animal-list";
        } else {
            return "redirect:/animal";
        }
    }

    /**
   * Endpoint to get the species of a animal in the database
   * @param species Species of the animal to get
   * @return The animal with the wanted species
   */
    @GetMapping("/animal/species/{species}")
    public Object getAnimalBySpecies(@PathVariable String species, Model model) {
        if (species != null) {
            model.addAttribute("animals", animalService.getAnimalBySpecies(species));
            model.addAttribute("title", "Animals by Species: " + species);
            return "animal-list";
        } else {
            return "redirect:/animal";
        }
    }

    /**
   * Endpoint to get the status of a animal in the database
   * @param status Status of the animal to get
   * @return The animal with the wanted status
   */
    @GetMapping("/animal/status/{status}")
    public Object getAnimalByStatus(@PathVariable String status, Model model) {
        if (status != null) {
            model.addAttribute("animals", animalService.getAnimalByStatus(status));
            model.addAttribute("title", "Animals by Status: " + status);
            return "animal-list";
        } else {
            return "redirect:/animal";
        }
    }

    /**
   * Endpoint to get the image of a animal in the database
   * @param image Image URL of the animal to get
   * @return The animal with the wanted image
   */
    @GetMapping("/animal/image")
    public Object getAnimalByImage(@RequestParam String image, Model model) {
        if (image != null) {
            model.addAttribute("animal", animalService.getAnimalByImage(image));
            model.addAttribute("title", "Animal by Image: " + image);
            return "animal-list";
        } else {
            return "redirect:/animal";
        }
    }

    @GetMapping("/animal/createForm")
    public Object showCreateForm(Model model) {
        Animal newAnimal = new Animal();
        model.addAttribute("animal", newAnimal);
        model.addAttribute("title", "Create Animal");
        return "animal-create";
    }
     /**
   * Endpoint to create/add a animal in the database
   * @param animal Animal to add
   * @return added animal
   */
    @PostMapping("/animal")
    public Object createAnimal(Animal animal) {
        Animal newAnimal = animalService.createAnimal(animal);
        return "redirect:/animal/" + newAnimal.getAnimalId();
    }


    @GetMapping("/animal/updateForm/{id}")
    public Object showUpdateForm(@PathVariable Long id, Model model) {
        model.addAttribute("animal", animalService.getAnimalById(id));
        model.addAttribute("title", "Update Animal: " + id);
        return "animal-update";
    }
    /**
   * Endpoint to update a animal in the database
   * @param id ID of the animal to update
   * @param animal Animal to update
   * @return updated animal
   */
    @PostMapping("/animal/{id}")
    public Object updateAnimal(@PathVariable Long id, Animal animal) {
        animalService.updateAnimal(id, animal);
        return "redirect:/animal/" + id;
    }

    /**
   * Endpoint to delete a animal in the database
   * @param id ID of the animal to delete
   * @return list of animals in database after deletion
   */
    @GetMapping("/animal/delete/{id}")
    public Object deleteAnimal(@PathVariable Long id) {
        animalService.deleteAnimal(id);
        return "redirect:/animal";
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

