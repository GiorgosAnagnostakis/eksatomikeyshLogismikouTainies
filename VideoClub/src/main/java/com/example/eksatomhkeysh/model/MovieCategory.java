package com.example.eksatomhkeysh.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;

import java.util.List;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "MOVIECATEGORY")
public class MovieCategory {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "NAME")
    private String name;

    @OneToMany(mappedBy = "movieCategory")
    @JsonIgnoreProperties(value = {"movieCategory"}, allowSetters = true)
    private List<Movie> movieList;

    @ManyToMany(mappedBy = "movieCategories")
    @JsonIgnoreProperties(value = {"movieCategories"}, allowSetters = true)
    List<PreferencesForm> preferencesForms;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Movie> getMovieList() {
        return movieList;
    }

    public void setMovieList(List<Movie> movieList) {
        this.movieList = movieList;
    }
}
