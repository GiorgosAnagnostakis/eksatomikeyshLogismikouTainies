import { Component, OnInit, Input, Output, EventEmitter } from '@angular/core';
import { Movie } from 'src/swagger-generated';

@Component({
  selector: 'app-show-movie-details',
  templateUrl: './show-movie-details.component.html',
  styleUrls: ['./show-movie-details.component.css']
})
export class ShowMovieDetailsComponent implements OnInit {

  @Input() selectedMovie: Movie;

  @Output() private isSuc = new EventEmitter<number>();


  constructor() { }

  ngOnInit() {
  }

}
