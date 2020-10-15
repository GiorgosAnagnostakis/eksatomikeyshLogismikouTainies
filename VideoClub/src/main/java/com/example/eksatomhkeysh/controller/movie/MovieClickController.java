package com.example.eksatomhkeysh.controller.movie;

import com.example.eksatomhkeysh.model.Movie;
import com.example.eksatomhkeysh.model.MovieClick;
import com.example.eksatomhkeysh.service.movie.MovieClickService;
import com.example.eksatomhkeysh.service.movie.MovieService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
@Api
public class MovieClickController {

    @Autowired
    MovieClickService movieClickService;

    @PostMapping(path = "/clickedMovie")
    ResponseEntity<Movie> createMovie(@Valid @RequestBody Movie movie) {
        return new ResponseEntity<>(movieClickService.createOrUpdateMovieClick(movie), HttpStatus.CREATED);
    }
}
