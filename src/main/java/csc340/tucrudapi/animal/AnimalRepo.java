package csc340.tucrudapi.animal;

import java.util.*;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface AnimalRepo extends JpaRepository<Animal, Long> {
    @Query(value = "Select * from animals s where s.species like CONCAT('%',?1,'%')", nativeQuery = true)
    List<Animal> getAnimalbySpecies(String species);

    @Query(value = "Select * from animals s where s.name like CONCAT('%',?1,'%')", nativeQuery = true)
    List<Animal> getAnimalbyName(String name);

    @Query(value = "Select * from animals s where s.status like CONCAT('%',?1,'%')", nativeQuery = true)
    List<Animal> getAnimalbyStatus(String status);
}