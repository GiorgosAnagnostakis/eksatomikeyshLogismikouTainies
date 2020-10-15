import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HttpClient, HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { Interceptor } from './interceptor';
import { JwtInterceptor } from './interceptors/jwt.interceptor';
import { LoginComponent } from './core/login/login/login.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { WelcomeComponent } from './welcome/welcome.component';
import { AuthenticationService } from './services/authentication.service';
import { TopNavbarComponent } from './menu/top-navbar/top-navbar.component';
import { TopNavbarNotLoggedinComponent } from './menu/top-navbar-not-loggedin/top-navbar-not-loggedin.component';
import { TypeaheadModule } from 'ngx-bootstrap/typeahead';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { DataTablesModule } from 'angular-datatables';
import { AuthenticationControllerService, MovieControllerService } from 'src/swagger-generated';
import { RegistrationComponent } from './core/login/registration/registration.component';
import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { AccessdeniedComponent } from './core/accessdenied/accessdenied/accessdenied.component';
import { MovieListComponent } from './movies/movie-list/movie-list.component';
import { ShowMovieDetailsComponent } from './movies/show-movie-details/show-movie-details.component';
import { BsModalRef, BsModalService, ModalBackdropComponent, ModalContainerComponent } from 'ngx-bootstrap/modal';
import { PreferencesFormComponent } from './form/preferences-form/preferences-form.component';
import { MovieClickControllerService } from 'src/swagger-generated/api/movieClickController.service';
import { PreferencesFormControllerService } from 'src/swagger-generated/api/preferencesFormController.service';
import { MovieCategoryControllerService } from 'src/swagger-generated/api/movieCategoryController.service';


@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    WelcomeComponent,
    RegistrationComponent,
    TopNavbarComponent,
    TopNavbarNotLoggedinComponent,
    AccessdeniedComponent,
    MovieListComponent,
    ShowMovieDetailsComponent,
    ModalBackdropComponent,
    ModalContainerComponent,
    PreferencesFormComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    FormsModule,
    ReactiveFormsModule,
    TypeaheadModule.forRoot(),
    BrowserAnimationsModule,
    DataTablesModule,
    FontAwesomeModule,
    NgbModule,
  ],
  exports: [

  ],
  entryComponents: [
    ModalBackdropComponent,
    ModalContainerComponent
  ],
  providers: [
    { provide: HTTP_INTERCEPTORS, useClass: Interceptor, multi: true },
    { provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true },
    AuthenticationService,
    AuthenticationControllerService,
    MovieControllerService,
    BsModalService,
    MovieClickControllerService,
    PreferencesFormControllerService,
    MovieCategoryControllerService
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
