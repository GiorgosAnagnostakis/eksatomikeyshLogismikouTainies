import { Component, OnInit, ComponentFactoryResolver, ViewChild, TemplateRef } from '@angular/core';
import { FormBuilder, Validators, FormGroup } from '@angular/forms';
import { AuthenticationControllerService, LoginRequest, Movie} from 'src/swagger-generated';
import { Token } from 'src/app/models/token';
import * as jwt_decode from 'jwt-decode';
import { JwtPayload } from 'src/app/models/jwt-payload';
import { AuthenticationService } from 'src/app/services/authentication.service';
import { Router, ActivatedRoute } from '@angular/router';
import { DataTableDirective } from 'angular-datatables';
import { Subject } from 'rxjs';
import { NgbModalOptions } from '@ng-bootstrap/ng-bootstrap';
import { BsModalRef, BsModalService } from 'ngx-bootstrap/modal';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {

  loginForm: FormGroup;
  token: Token;

 public href: string = "";

 modalRef: BsModalRef;


 config = {

   animated: true,
   keyboard: false,
   backdrop: true,
   ignoreBackdropClick: true,
   class: "my-modal"
 };

 @ViewChild('template', { static: false }) dtElement: DataTableDirective;

 dtOptions: any = {};
 movies: Movie[];
 dtTrigger: Subject<Movie> = new Subject();
 ngbModalOptions: NgbModalOptions = {
   backdrop: 'static',
   keyboard: false
 };

  constructor(
    private fb: FormBuilder,
    private authControllerService: AuthenticationControllerService,
    private authenticationService: AuthenticationService,
    private router: Router,
    private route: ActivatedRoute,
    private modalService: BsModalService,
  ) { }

  ngOnInit() {

    if (this.authenticationService.isLoggedIn()) {
      this.navigate();
    }


    this.loginForm = this.fb.group({
      username: ['', Validators.required],
      password: ['', Validators.required]
    });

    this.route.queryParams.subscribe(params => {
      let token = params['token'];
      if (token != null){
      this.authenticationService.setSession(token);
      this.navigate();
      }
    });
 }

  login() {
    let loginRequest: LoginRequest = {};
    loginRequest.username = this.loginForm.value.username;
    loginRequest.password = this.loginForm.value.password;

    this.authControllerService.authenticateUserUsingPOST(loginRequest).subscribe(data => {this.token = data; this.authenticationService.setSession(this.token.accessToken);
      console.log(localStorage)
      console.log(localStorage.getItem('formCompleted'))
      if (localStorage.getItem('formCompleted') === '0' || localStorage.getItem('formCompleted') === "null" || localStorage.getItem('formCompleted') === '' ) {
        this.openModal()
      } else {
        this.navigate();
      }

    })
  }

  signUp() {
    this.router.navigateByUrl(`/signup`);
  }

  navigate() {
      this.router.navigateByUrl(`/movies`)
  }

  openModal() {
    this.modalRef = this.modalService.show(this.dtElement);
    this.modalRef.setClass('modal-lg');
  }

  onSuccessfulExamCreate(examID) {
    this.modalRef.hide();
    this.navigate();
  }
}

