package com.example.eksatomhkeysh.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;

import java.util.List;
import java.util.Set;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "MOVIE")
public class Movie {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "TITLE")
    private String title;

    @Column(name = "YEAR")
    private String year;

    @Column(name = "DURATION")
    private String duration;

    @Column(name = "DIRECTOR")
    private String director;

    @Column(name = "RATING")
    private String rating;

    @Column(name = "DESCRIPTION")
    private String description;

    @Column(name = "IMAGEURL")
    private String imageUrl;

    @Transient
    private int seen;

    @ManyToOne
    @JoinColumn(name = "CATEGORY_REF")
    @JsonIgnoreProperties(value = {""}, allowSetters = true)
    private MovieCategory movieCategory;

    @ManyToMany(mappedBy = "moviesSeen")
    @JsonIgnoreProperties({"moviesSeen"})
    private Set<User> users;

    @OneToMany(mappedBy = "movie")
    @JsonIgnoreProperties({"movie"})
    private List<MovieClick> movieclicks;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getRating() {
        return rating;
    }

    public void setRating(String rating) {
        this.rating = rating;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public MovieCategory getMovieCategory() {
        return movieCategory;
    }

    public void setMovieCategory(MovieCategory movieCategory) {
        this.movieCategory = movieCategory;
    }

    public int getSeen() {
        return seen;
    }

    public void setSeen(int seen) {
        this.seen = seen;
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }
}
