package com.example.eksatomhkeysh.service.movie.impl;

import com.example.eksatomhkeysh.model.MovieCategory;
import com.example.eksatomhkeysh.repository.MovieCategoryRepository;
import com.example.eksatomhkeysh.service.movie.MovieCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class MovieCategoryServiceImpl implements MovieCategoryService {

    @Autowired
    MovieCategoryRepository movieCategoryRepository;

    @Override
    public List<MovieCategory> getAllMovieCategories() {
        return movieCategoryRepository.findAll();
    }
}
