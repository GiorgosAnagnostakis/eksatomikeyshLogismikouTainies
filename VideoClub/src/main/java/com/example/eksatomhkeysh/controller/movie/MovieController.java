package com.example.eksatomhkeysh.controller.movie;

import com.example.eksatomhkeysh.model.Movie;
import com.example.eksatomhkeysh.service.UserService;
import com.example.eksatomhkeysh.service.movie.MovieService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@Api
public class MovieController {

    @Autowired
    MovieService movieService;

    @Autowired
    UserService userService;

    @GetMapping(path = "/movies/{id}")
    ResponseEntity<Movie> getMovieById(@PathVariable Long id) {
        return new ResponseEntity<>(movieService.getMovieById(id), HttpStatus.OK);
    }

    @GetMapping(path = "/movies")
    ResponseEntity<List<Movie>> getAllMovies() {
        return new ResponseEntity<>(movieService.getAllMovies(), HttpStatus.OK);
    }

    @GetMapping(path = "/moviesPaged")
    ResponseEntity<List<Movie>> getAllMoviesPaged() {
        userService.findPreferencedMovie();
        return new ResponseEntity<>(movieService.getAllMovies(), HttpStatus.OK);
    }

    @PostMapping(path = "/movies")
    ResponseEntity<Movie> createMovie(@Valid @RequestBody Movie movie) {
        return new ResponseEntity<>(movieService.createMovie(movie), HttpStatus.CREATED);
    }

    @PutMapping(path = "/movies")
    ResponseEntity<Movie> updateMovie(@Valid @RequestBody Movie movie) {
        return new ResponseEntity<>(movieService.updateMovie(movie), HttpStatus.OK);
    }

    @DeleteMapping(path = "/movies/{id}")
    ResponseEntity<Void> deleteMovie(@PathVariable Long id) {
        movieService.deleteMovie(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @PostMapping(path = "/addSeenMovie")
    ResponseEntity<Void> addSeenMovie(@RequestBody Movie movie) {
        userService.addWatchedMovie(movie);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @GetMapping(path = "/movies/suggestedMovie")
    ResponseEntity<Movie> getSuggestedMovie() {
        return new ResponseEntity<>(userService.findPreferencedMovie(), HttpStatus.OK);
    }

}
