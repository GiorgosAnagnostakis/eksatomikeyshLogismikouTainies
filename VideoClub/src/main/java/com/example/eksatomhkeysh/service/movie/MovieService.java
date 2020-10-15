package com.example.eksatomhkeysh.service.movie;

import com.example.eksatomhkeysh.model.Movie;
import java.util.List;

public interface MovieService {

    Movie getMovieById(Long id);

    public List<Movie> getAllMovies();

    Movie createMovie(Movie movie);

    Movie updateMovie(Movie movie);

    void deleteMovie(Long id);

    Movie getRecommendedMovie();
}
