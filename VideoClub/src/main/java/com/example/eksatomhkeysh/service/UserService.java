package com.example.eksatomhkeysh.service;


import com.example.eksatomhkeysh.model.Movie;
import com.example.eksatomhkeysh.model.User;
import com.example.eksatomhkeysh.payload.SignUpRequest;

import java.util.List;
import java.util.Optional;

public interface UserService {

    User getUserById(Long id);

    List<User> getUsers(String username);

    User createUser(SignUpRequest signUpRequest);

//    User updateUser(User user);

    void deleteUser(Long id);

    User addRoleToUser(Long userId, Long roleId);

    User removeRoleFromUser(Long userId, Long roleId);

    User getAuthenticatedUser();

    User updatePassword(Long userId, String currentPassword, String newPassword, String newPasswordRepeat);

    void addWatchedMovie(Movie movie);

    Movie findPreferencedMovie();
}