package com.example.eksatomhkeysh.repository;

import com.example.eksatomhkeysh.model.MovieClick;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MovieClickRepository extends JpaRepository<MovieClick, Long> {

    MovieClick findByUserIdAndMovieId(Long UserId, Long MovieId);

    MovieClick existsByUserIdAndMovieId(Long UserId, Long Movied);
}
