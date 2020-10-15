package com.example.eksatomhkeysh.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

import javax.persistence.*;
import java.util.List;
import java.util.Set;


@Entity
@Table(name = "USERS")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "NAME")
    private String username;

    @Column(name = "FULLNAME")
    private String fullName;

    @Column(name = "ACTIVE")
    private boolean active;

    @Column(name = "FORM_COMPLETED")
    private Long formCompleted;

    @Column(name = "ENCRYPTED_PASSWORD")
    @JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
    private String encryptedPassword;

    @ManyToMany
    @JoinTable(
            name = "ROLEASSIGN",
            joinColumns = @JoinColumn(name = "USERREF"),
            inverseJoinColumns = @JoinColumn(name = "ROLEREF")
    )
    @JsonIgnoreProperties({"users"})
    private Set<Role> roles;

    @ManyToMany
    @JoinTable(
            name = "MOVIES_SEEN",
            joinColumns = @JoinColumn(name = "USER_ID"),
            inverseJoinColumns = @JoinColumn(name = "MOVIE_ID")
    )
    @JsonIgnoreProperties({"user", "movieCategory"})
    private List<Movie> moviesSeen;

    @OneToMany(mappedBy = "user")
    @JsonIgnoreProperties({"user", "movie","movieclicks"})
    private List<MovieClick> movieclicks;

    @OneToOne(mappedBy = "user")
    @JsonIgnoreProperties({"user", "movieCategories"})
    private PreferencesForm preferencesForm;

//    @OneToMany(mappedBy = "user")
//    @JsonIgnoreProperties({"user"})
//    private List<Product> products;
//
//    @OneToMany(mappedBy = "seller")
//   @JsonIgnoreProperties({"Seller", "Buyer"})
//    private List<Transaction> sales;
//
//    @OneToMany(mappedBy = "buyer")
////    @JsonIgnoreProperties({"Seller", "Buyer"})
//    private List<Transaction> transactions;



    public User() {
        // Default Constructor
    }

    public User(String username) {
        this.username = username;
    }

    public void addRole(Role role) {
        this.roles.add(role);
        role.getUsers().add(this);
    }

    public void removeRole(Role role) {
        this.roles.remove(role);
        role.getUsers().remove(this);
    }

    public void addMovie(Movie movie) {
        this.moviesSeen.add(movie);
        movie.getUsers().add(this);
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getEncryptedPassword() {
        return encryptedPassword;
    }

    public void setEncryptedPassword(String encryptedPassword) {
        this.encryptedPassword = encryptedPassword;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

//    public List<Product> getProducts() {
//        return products;
//    }
//
//    public void setProducts(List<Product> products) {
//        this.products = products;
//    }

    public Long getFormCompleted() {
        return formCompleted;
    }

    public List<Movie> getMoviesSeen() {
        return moviesSeen;
    }

    public void setMoviesSeen(List<Movie> moviesSeen) {
        this.moviesSeen = moviesSeen;
    }

    public void setFormCompleted(Long formCompleted) {
        this.formCompleted = formCompleted;
    }

    public List<MovieClick> getMovieclicks() {
        return movieclicks;
    }

    public void setMovieclicks(List<MovieClick> movieclicks) {
        this.movieclicks = movieclicks;
    }

    public PreferencesForm getPreferencesForm() {
        return preferencesForm;
    }

    public void setPreferencesForm(PreferencesForm preferencesForm) {
        this.preferencesForm = preferencesForm;
    }
}
