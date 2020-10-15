package com.example.eksatomhkeysh.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;

import java.util.List;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "PREFERENCESFORM")
public class PreferencesForm {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "ID")
    private Long id;

    @ManyToMany
    @JoinTable(
            name = "PREFERENCESFORMMOVIES",
            joinColumns = @JoinColumn(name = "PREF_FORM_ID"),
            inverseJoinColumns = @JoinColumn(name = "MOVIE_CAT_ID")
    )
    @JsonIgnoreProperties({"movieList"})
    private List<MovieCategory> movieCategories;

    @Column(name = "AGE")
    private Long age;

    @OneToOne()
    @JoinColumn(name = "USER_REF")
    private User user;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<MovieCategory> getMovieCategories() {
        return movieCategories;
    }

    public void setMovieCategories(List<MovieCategory> movieCategories) {
        this.movieCategories = movieCategories;
    }

    public Long getAge() {
        return age;
    }

    public void setAge(Long age) {
        this.age = age;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
