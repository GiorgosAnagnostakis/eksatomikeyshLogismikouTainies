package com.example.eksatomhkeysh.controller.movie;

import com.example.eksatomhkeysh.model.Movie;
import com.example.eksatomhkeysh.model.PreferencesForm;
import com.example.eksatomhkeysh.service.movie.PreferencesFormService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;

@RestController
@Api
public class PreferencesFormController {

    @Autowired
    PreferencesFormService preferencesFormService;

    @PostMapping(path = "/createPrefForm")
    ResponseEntity<PreferencesForm> createMovie(@Valid @RequestBody PreferencesForm preferencesForm) {
        return new ResponseEntity<>(preferencesFormService.createPreferencesForm(preferencesForm), HttpStatus.CREATED);
    }
}
