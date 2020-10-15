package com.example.eksatomhkeysh.service;


import com.example.eksatomhkeysh.model.*;
import com.example.eksatomhkeysh.payload.SignUpRequest;
import com.example.eksatomhkeysh.repository.MovieRepository;
import com.example.eksatomhkeysh.repository.RoleRepository;
import com.example.eksatomhkeysh.repository.UserRepository;
import com.example.eksatomhkeysh.security.AuthenticationFacade;
import com.example.eksatomhkeysh.security.UserPrincipal;
import com.example.eksatomhkeysh.service.movie.MovieCategoryService;
import com.example.eksatomhkeysh.service.movie.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityNotFoundException;
import java.util.*;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    UserRepository userRepository;

    @Autowired
    RoleRepository roleRepository;

    @Autowired
    AuthenticationFacade authenticationFacade;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    MovieService movieService;

    @Autowired
    MovieCategoryService movieCategoryService;

    @Autowired
    MovieRepository movieRepository;


    @Override
    public User getUserById(Long id) {
        return userRepository.findById(id).orElseThrow(() -> new EntityNotFoundException("User not found"));
    }

    @Override
    public List<User> getUsers(String username) {
        User administrators = userRepository.findByUsername("Administrators").orElse(null);
        return username == null ? userRepository.findAll() : getUserByUsername(username);
    }

    @Override
    public User createUser(SignUpRequest signUpRequest) {

        User user = new User();
        user.setUsername(signUpRequest.getUsername());
        user.setEncryptedPassword(bCryptPasswordEncoder.encode(signUpRequest.getPassword()));
        user.setActive(true);
        userRepository.findByUsername(user.getUsername())
                .ifPresent(value -> {
                    throw new EntityAlreadyExistsException("User", "username", "A User with the same username already exists");
                });

        Role role = roleRepository.findByName(signUpRequest.getRole())
                .orElseThrow(() -> new EntityNotFoundException("Role not found"));

        Set<Role> roles = new HashSet<>();
        roles.add(role);
        user.setRoles(roles);
        return userRepository.save(user);
    }


//    @Override
//    public User updateUser(User userWithNewValues) {
////        User currentUser = userRepository.findById(userWithNewValues.getId())
////                .orElseThrow(() -> new EntityNotFoundException("User", "User not found"));
////        userRepository.findByUsername(userWithNewValues.getUsername())
////                .filter(value -> !value.getId().equals(userWithNewValues.getId()))
////                .ifPresent(value -> {
////                    throw new EntityNotFoundException();
////                });
////        currentUser = setNewValues(currentUser, userWithNewValues);
//        return userRepository.save(currentUser);
//    }

    @Override
    public void deleteUser(Long id) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserPrincipal) {
            if (id.equals(((UserPrincipal) principal).getId())) {
                //  throw new DeleteSelfException("You cannot delete yourself! :P");
            }
        }
        userRepository.deleteById(id);
    }


    @Override
    public User addRoleToUser(Long userId, Long roleId) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new EntityNotFoundException("User not found"));
        Role role = roleRepository.findById(roleId)
                .orElseThrow(() -> new EntityNotFoundException("Role not found"));
        user.addRole(role);
        return userRepository.save(user);
    }

    @Override
    public User removeRoleFromUser(Long userId, Long roleId) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new EntityNotFoundException("User not found"));
        Role role = roleRepository.findById(roleId)
                .orElseThrow(() -> new EntityNotFoundException("Role not found"));
        user.removeRole(role);
        return userRepository.save(user);
    }

    private List<User> getUserByUsername(String username) {
        List<User> users = new ArrayList<>();
        User user = userRepository.findByUsername(username).orElseThrow(() -> new EntityNotFoundException("No user found by that username[" + username + "]"));
        users.add(user);
        return users;
    }

    @Override
    public User getAuthenticatedUser() {
        Object principal = authenticationFacade.getAuthentication().getPrincipal();
        if (principal instanceof UserPrincipal) {
            UserPrincipal userPrincipal = (UserPrincipal) principal;
            return userRepository.findById(userPrincipal.getId()).orElseThrow(() -> new EntityNotFoundException("User not found"));
        }
        throw new EntityNotFoundException("User not found");
    }

    @Override
    public User updatePassword(Long userId, String currentPassword, String newPassword, String newPasswordRepeat) {
        User user = userRepository.findById(userId)
                .orElseThrow(() -> new EntityNotFoundException("User not found"));
        if (!bCryptPasswordEncoder.matches(currentPassword, user.getEncryptedPassword())) {
//            throw new IncorrectPasswordException("Incorrect password provided");
        }
        if (!newPassword.equals(newPasswordRepeat)) {
//            throw new PasswordMismatchException("The passwords do not match");
        }
        user.setEncryptedPassword(bCryptPasswordEncoder.encode(newPassword));
        return user;
    }

    @Override
    public void addWatchedMovie(Movie movie) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userRepository.findByUsername(auth.getName())
                .orElseThrow(() -> new UsernameNotFoundException("User not found with username: " + auth.getName()));
        user.addMovie(movie);

    }

    @Override
    public Movie findPreferencedMovie() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userRepository.findByUsername(auth.getName())
                .orElseThrow(() -> new UsernameNotFoundException("User not found with username: " + auth.getName()));

        HashMap<MovieCategory, Long> categoryToSuggest = new HashMap<>();

        List<Movie> allMovies = movieRepository.findAllByOrderByRatingDesc(); // GET ALL MOVIES STEP 1
        List<Movie> seenMovies = user.getMoviesSeen(); // GET MOVIES SEEN BY USER STEP 2

        List<Movie> moviesToSuggest = new ArrayList<>();
        allMovies.removeAll(seenMovies);   //REMOVE ALL SEEN MOVIES STEP 3
        moviesToSuggest.addAll(allMovies);


        List<MovieCategory> allCategories = movieCategoryService.getAllMovieCategories();

        for (MovieCategory mc : allCategories) {
            categoryToSuggest.put(mc, 0L);
        }

        List<MovieCategory> clickedMovieCategories = clickedMovieCategories();
        List<MovieCategory> seenMovieCategories = seenMovieCategories();

        List<MovieCategory> preferencedMovies = new ArrayList<>();
        if (user.getPreferencesForm() != null) {
            preferencedMovies = user.getPreferencesForm().getMovieCategories();
        }

        for (MovieCategory mc : clickedMovieCategories) {
            categoryToSuggest.put(mc, categoryToSuggest.get(mc) + 2L);
        }

        for (MovieCategory mc : seenMovieCategories) {
            categoryToSuggest.put(mc, categoryToSuggest.get(mc) + 9L);
        }

        for (MovieCategory mc : preferencedMovies) {
            categoryToSuggest.put(mc, categoryToSuggest.get(mc) + 9L);
        }

        MovieCategory movieCategoryToSuggest = findTopMovieCategory(categoryToSuggest);
        System.out.println(movieCategoryToSuggest);

        System.out.println(findTopMovie(moviesToSuggest, movieCategoryToSuggest));

        return findTopMovie(moviesToSuggest, movieCategoryToSuggest);
    }


    List<MovieCategory> clickedMovieCategories() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userRepository.findByUsername(auth.getName())
                .orElseThrow(() -> new UsernameNotFoundException("User not found with username: " + auth.getName()));

        List<MovieClick> clickedMovies = user.getMovieclicks();
        List<MovieCategory> movieCategories = new ArrayList<>();

        for (MovieClick mc : clickedMovies) {
            for (int i = 0; i< mc.getClicks(); i++) {
                movieCategories.add(mc.getMovie().getMovieCategory());
            }
        }

        return movieCategories;
    }

    List<MovieCategory> seenMovieCategories() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userRepository.findByUsername(auth.getName())
                .orElseThrow(() -> new UsernameNotFoundException("User not found with username: " + auth.getName()));

        List<MovieCategory> movieCategories = new ArrayList<>();

        for (Movie m : user.getMoviesSeen()) {
            movieCategories.add(m.getMovieCategory());
        }


        return movieCategories;
    }

    MovieCategory findTopMovieCategory(HashMap<MovieCategory, Long> categoryToSuggest) {

        Map.Entry<MovieCategory, Long> maxEntry = null;

        for (Map.Entry<MovieCategory, Long> entry : categoryToSuggest.entrySet()) {
            if (maxEntry == null || entry.getValue().compareTo(maxEntry.getValue()) > 0) {
                maxEntry = entry;
            }
        }
        return maxEntry.getKey();
    }

    Movie findTopMovie(List<Movie> moviesToSuggest, MovieCategory topCategory) {

//        return moviesToSuggest.stream()
//        .filter( x -> x.getMovieCategory().equals(topCategory))
//        .findFirst();
        for (Movie m: moviesToSuggest) {
            if (m.getMovieCategory().equals(topCategory)) {
                return m;
            }
        }
        return null;
    }

}

