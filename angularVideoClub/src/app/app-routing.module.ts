import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { LoginComponent } from './core/login/login/login.component';
import { WelcomeComponent } from './welcome/welcome.component';
import { RegistrationComponent } from './core/login/registration/registration.component';
import { RoleGuard } from './services/role.guard';
import { AccessdeniedComponent } from './core/accessdenied/accessdenied/accessdenied.component';
import { MovieListComponent } from './movies/movie-list/movie-list.component';


const routes: Routes = [

  { path: '', component: LoginComponent },
  { path: 'login', component: LoginComponent },
  { path: 'signup', component: RegistrationComponent},
  { path: 'movies', component: MovieListComponent},


  { path: 'accessDenied', component: AccessdeniedComponent},
  { path: 'welcome', component: WelcomeComponent,
  canActivate: [RoleGuard],
  data: { expectedRole: ['ROLE_ADMIN'] }}



];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }

