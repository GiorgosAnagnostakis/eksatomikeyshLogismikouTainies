import { catchError } from 'rxjs/operators';
import { MovieCategoryControllerService } from './../../../swagger-generated/api/movieCategoryController.service';
import { PreferencesFormControllerService } from './../../../swagger-generated/api/preferencesFormController.service';
import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { Movie, MovieCategory } from 'src/swagger-generated';
import { Validators, FormBuilder } from '@angular/forms';
import { PreferencesForm } from 'src/swagger-generated/model/preferencesForm';

@Component({
  selector: 'app-preferences-form',
  templateUrl: './preferences-form.component.html',
  styleUrls: ['./preferences-form.component.css']
})
export class PreferencesFormComponent implements OnInit {

  @Output() private isSuc = new EventEmitter<number>();

  movieCategories: MovieCategory[];
  preferencesUserForm: PreferencesForm;
  movieCategoriesSelected:  MovieCategory[];

  preferencesForm = this.fb.group({
    category: ['', Validators.required],
  });

  constructor(private fb: FormBuilder,
      private preferencesFormControllerService: PreferencesFormControllerService,
      private movieCategoryControllerService: MovieCategoryControllerService) { }

  ngOnInit() {
    this.movieCategoryControllerService.getAllMovieCategoriesUsingGET().subscribe( data => this.movieCategories = data);
  }


  submitForm() {
    const preferencesForm: PreferencesForm = {
      movieCategories: this.preferencesForm ? this.preferencesForm.value.category : null,
    };
    // Object.keys(this.preferencesForm.controls).forEach(control => {
    //   preferencesForm['' + control + ''] = this.preferencesForm.controls['' + control + ''].value;
    // });
    this.preferencesFormControllerService.createMovieUsingPOST2(preferencesForm).subscribe(data => {console.log('success'); this.isSuc.emit(1)})
  }

}
