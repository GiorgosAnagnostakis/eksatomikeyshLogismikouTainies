package com.example.eksatomhkeysh.service.movie.impl;

import com.example.eksatomhkeysh.model.Movie;
import com.example.eksatomhkeysh.model.MovieClick;
import com.example.eksatomhkeysh.model.User;
import com.example.eksatomhkeysh.repository.MovieClickRepository;
import com.example.eksatomhkeysh.repository.UserRepository;
import com.example.eksatomhkeysh.service.UserService;
import com.example.eksatomhkeysh.service.movie.MovieClickService;
import org.checkerframework.checker.units.qual.A;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MovieClickServiceImpl implements MovieClickService {

    @Autowired
    UserRepository userRepository;

    @Autowired
    MovieClickRepository movieClickRepository;



    @Override
    public Movie createOrUpdateMovieClick(Movie movie) {

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userRepository.findByUsername(auth.getName())
                .orElseThrow(() -> new UsernameNotFoundException("User not found with username: " + auth.getName()));

        MovieClick movieClick = movieClickRepository.findByUserIdAndMovieId(user.getId(), movie.getId());

        if(movieClick == null) {
            MovieClick movieClickToCreate = new MovieClick();
            movieClickToCreate.setUser(user);
            movieClickToCreate.setMovie(movie);
            movieClickToCreate.setClicks(1L);
            movieClickRepository.save(movieClickToCreate);
        } else {
            movieClick.setClicks(movieClick.getClicks() + 1L);
            movieClickRepository.save(movieClick);
        }
        return null;
    }
}
