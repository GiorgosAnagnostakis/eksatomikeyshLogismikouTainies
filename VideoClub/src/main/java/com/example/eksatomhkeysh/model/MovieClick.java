package com.example.eksatomhkeysh.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "MOVIECLICKS")
public class MovieClick {

    @Id
    @GeneratedValue(strategy = IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "CLICKS")
    private Long clicks;

    @ManyToOne
    @JoinColumn(name = "MOVIE_REF")
    @JsonIgnoreProperties({"movieclicks"})
    private Movie movie;

    @ManyToOne
    @JoinColumn(name = "USER_REF")
    @JsonIgnoreProperties({"movieclicks"})
    private User user;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getClicks() {
        return clicks;
    }

    public void setClicks(Long clicks) {
        this.clicks = clicks;
    }

    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
