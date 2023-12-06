package com.nocountry.c15g39n.repositories;

import com.nocountry.c15g39n.entities.Enlace;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VideoRepository extends JpaRepository<Enlace, Long> {
}
