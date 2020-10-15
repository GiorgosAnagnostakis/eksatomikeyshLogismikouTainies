package com.example.eksatomhkeysh.service.movie.impl;

import com.example.eksatomhkeysh.model.Movie;
import com.example.eksatomhkeysh.model.User;
import com.example.eksatomhkeysh.repository.MovieRepository;
import com.example.eksatomhkeysh.repository.UserRepository;
import com.example.eksatomhkeysh.service.movie.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityNotFoundException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
@Transactional
public class MovieServiceImpl implements MovieService {
    
    @Autowired
    MovieRepository movieRepository;

    @Autowired
    UserRepository userRepository;

    @Override
    public Movie getMovieById(Long id) {
        return movieRepository.findById(id).orElseThrow(() -> new EntityNotFoundException("NOT FOUND"));
    }

    @Override
    public List<Movie> getAllMovies() {

        List<Movie> getAllMovies = movieRepository.findAll();

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userRepository.findByUsername(auth.getName())
                .orElseThrow(() -> new UsernameNotFoundException("User not found with username: " + auth.getName()));

        Set<Movie> container = new HashSet<Movie>(user.getMoviesSeen());
//        getAllMovies.stream()
//                .filter( x -> container.contains(x))
//                .forEach( x-> x.setSeen(0));

        for (Movie m: getAllMovies) {
            if (container.contains(m)){
                m.setSeen(1);
            } else {
                m.setSeen(0);
            }
        }

        return getAllMovies;
    }


    @Override
    public Movie createMovie(Movie medicalEquipment) {
        return movieRepository.save(medicalEquipment);
    }

    @Override
    public Movie updateMovie(Movie medicalEquipment) {
        movieRepository.findById(medicalEquipment.getId())
                .orElseThrow(() -> new EntityNotFoundException("not found"));
        return movieRepository.save(medicalEquipment);
    }

    @Override
    public void deleteMovie(Long id) {
        movieRepository.deleteById(id);
    }

    @Override
    public Movie getRecommendedMovie() {
        //TODO
        return null;
    }
}
