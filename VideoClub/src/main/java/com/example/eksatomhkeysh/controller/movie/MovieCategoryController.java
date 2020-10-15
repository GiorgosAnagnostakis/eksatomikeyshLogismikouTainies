package com.example.eksatomhkeysh.controller.movie;

import com.example.eksatomhkeysh.model.Movie;
import com.example.eksatomhkeysh.model.MovieCategory;
import com.example.eksatomhkeysh.service.movie.MovieCategoryService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@Api
public class MovieCategoryController {

    @Autowired
    MovieCategoryService movieCategoryService;

    @GetMapping(path = "/moviecategories")
    ResponseEntity<List<MovieCategory>> getAllMovieCategories() {
        return new ResponseEntity<>(movieCategoryService.getAllMovieCategories(), HttpStatus.OK);
    }
}
