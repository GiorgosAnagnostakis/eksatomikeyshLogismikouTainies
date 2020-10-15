package com.example.eksatomhkeysh.service.movie.impl;

import com.example.eksatomhkeysh.model.Movie;
import com.example.eksatomhkeysh.model.PreferencesForm;
import com.example.eksatomhkeysh.model.User;
import com.example.eksatomhkeysh.repository.PreferencesFormRepository;
import com.example.eksatomhkeysh.repository.UserRepository;
import com.example.eksatomhkeysh.service.movie.PreferencesFormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class PreferencesFormServiceImpl implements PreferencesFormService {

    @Autowired
    PreferencesFormRepository preferencesFormRepository;

    @Autowired
    UserRepository userRepository;

    @Override
    public PreferencesForm createPreferencesForm(PreferencesForm preferencesForm) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        User user = userRepository.findByUsername(auth.getName())
                .orElseThrow(() -> new UsernameNotFoundException("User not found with username: " + auth.getName()));
        preferencesForm.setUser(user);

        user.setFormCompleted(1L);

        userRepository.save(user);
        return preferencesFormRepository.save(preferencesForm);
    }
}
