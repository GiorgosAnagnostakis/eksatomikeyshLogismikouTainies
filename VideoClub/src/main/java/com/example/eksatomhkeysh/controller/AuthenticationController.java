package com.example.eksatomhkeysh.controller;

import com.example.eksatomhkeysh.payload.JwtAuthenticationResponse;
import com.example.eksatomhkeysh.payload.LoginRequest;
import com.example.eksatomhkeysh.payload.SignUpRequest;
import com.example.eksatomhkeysh.security.JwtTokenProvider;
import com.example.eksatomhkeysh.service.UserService;
import io.swagger.annotations.Api;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@RestController
@RequestMapping(value = "/auth")
@Api
public class AuthenticationController {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JwtTokenProvider tokenProvider;

    @Autowired
    UserService userService;

    @PostMapping(value = "/login")
    public ResponseEntity<?> authenticateUser(@Valid @RequestBody LoginRequest loginRequest) {
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        loginRequest.getUsername(),
                        loginRequest.getPassword()
                )
        );

        SecurityContextHolder.getContext().setAuthentication(authentication);
        String jwt = tokenProvider.generateToken(authentication);
        return ResponseEntity.ok(new JwtAuthenticationResponse(jwt));
    }

    @PostMapping(value = "/signup")
    public ResponseEntity<?> signUpUser(@RequestBody SignUpRequest signUpRequest) {
            userService.createUser(signUpRequest);
            return new ResponseEntity(HttpStatus.OK);
        }

    @PostMapping(value = "/hello")
    public ResponseEntity<?> helloUser() {

        System.out.println("hellooooo");
        userService.getUserById(1L);

        return new ResponseEntity(HttpStatus.OK);
    }

}