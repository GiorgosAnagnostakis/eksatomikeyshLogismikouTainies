import { MovieClickControllerService } from './../../../swagger-generated/api/movieClickController.service';
import { Component, OnInit, ViewChild, TemplateRef } from '@angular/core';
import { faTrash, faPlus, faHospital, faTrashAlt, faEye } from '@fortawesome/free-solid-svg-icons';
import { DataTableDirective } from 'angular-datatables';
import { Subject, Observable } from 'rxjs';
import { NgbModalOptions, NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { Movie, MovieControllerService } from 'src/swagger-generated';
import { BsModalRef, BsModalService } from 'ngx-bootstrap/modal';

@Component({
  selector: 'app-movie-list',
  templateUrl: './movie-list.component.html',
  styleUrls: ['./movie-list.component.css']
})
export class MovieListComponent implements OnInit {

  faTrash = faTrash;
  faPlus = faPlus;
  faHospital = faHospital;
  faTrashAlt = faTrashAlt;
  faEye = faEye;


  eyeColor: 'red';

  modalRef: BsModalRef;

  config = {

    animated: true,
    keyboard: false,
    backdrop: true,
    ignoreBackdropClick: true,
    class: "my-modal"
  };

  selectedMovie: Movie;
  suggestedMovie: Movie;

  @ViewChild(DataTableDirective, { static: false }) dtElement: DataTableDirective;


  dtOptions: any = {

  };
  movies: Movie[];
  dtTrigger: Subject<Movie> = new Subject();
  ngbModalOptions: NgbModalOptions = {
    backdrop: 'static',
    keyboard: false
  };

  constructor(
    // private utilsService: UtilsService,
    private movieControllerService: MovieControllerService,
    private modalService: BsModalService,
    private movieClickControllerService: MovieClickControllerService
    ) { }

  ngOnInit() {
    this.dtOptions = {
      pagingType: 'full_numbers',
      pageLength: 10,
      // dom: myGlobals.DATATABLE_DOM_TEMPLATE,
      // buttons: myGlobals.DATATABLE_BUTTONS,
      // columnDefs: [
      //   { orderable: false, targets: this.utilsService.getDeleteColumnNumber() }
      // ]
    };
    this.getSuggestedMovie();
  }


  ngAfterViewInit() {
    this.generateDataTable();
  }

  ngOnDestroy(): void {
    this.dtTrigger.unsubscribe();
  }

  // openCreateProduct() {
  //   const modalRef = this.modalService.open(CrudProductComponent, this.ngbModalOptions);
  //   modalRef.result.then(
  //     successfulCreate => {
  //       if (successfulCreate) {
  //         this.refreshDataTable();
  //       }
  //     }
  //   );
  // }

  private generateDataTable() {
    this.movieControllerService.getAllMoviesUsingGET()
      .subscribe(
        data => {
          this.movies = data;
          this.dtTrigger.next();
          console.log(data)
        }
      );
  }

  // private deleteProduct(id: number) {
  //   this.selectProduct(id).subscribe(product => {
  //     this.selectedMovie = product;
  //     const modalRef = this.modalService.open(ConfirmDeleteComponent, this.ngbModalOptions);
  //     modalRef.componentInstance.entityToBeDeleted = new ProductImpl(this.selectedMovie);
  //     modalRef.result.then(deletionConfirmed => {
  //       if (deletionConfirmed) {
  //         this.movieControllerService.deleteMovieUsingDELETE(id)
  //           .subscribe(
  //             () => {
  //               this.destroyDataTable();
  //               this.generateDataTable();
  //             });
  //       }
  //     });
  //   });

  // }

  private selectProduct(id: number): Observable<any> {
    return this.movieControllerService.getMovieByIdUsingGET(id);
  }

  // openUpdateModal(id: number) {
  //   this.selectProduct(id).subscribe(product => {
  //     this.selectedMovie = product;
  //     const modalRef = this.modalService.open(CrudProductComponent, this.ngbModalOptions);
  //     modalRef.componentInstance.selectedProduct = this.selectedMovie;
  //     modalRef.result.then(
  //       updateOccurred => {
  //         if (updateOccurred) {
  //           this.refreshDataTable();
  //         }
  //       }
  //     );
  //   });
  // }

  private destroyDataTable(): void {
    this.dtElement.dtInstance.then((dtInstance: DataTables.Api) => {
      dtInstance.destroy();
    });
  }

  private refreshDataTable() {
    this.destroyDataTable();
    this.generateDataTable();
  }

  openModal(template: TemplateRef<any>, movie: Movie) {

    this.movieClickControllerService.createMovieUsingPOST(movie).subscribe(data => console.log('ok'))
    this.selectedMovie = movie;
    this.modalRef = this.modalService.show(template);
    this.modalRef.setClass('modal-lg');
  }

  onSuccessfulExamCreate(examID) {
    this.modalRef.hide();

  }

  addSeenMovie(movie: Movie) {
    this.movieControllerService.addSeenMovieUsingPOST(movie).subscribe( data => {console.log(data); this.refreshDataTable();})
    }

  getSuggestedMovie() {
    this.movieControllerService.getSuggestedMovieUsingGET().subscribe( data => this.suggestedMovie = data);
  }
}
