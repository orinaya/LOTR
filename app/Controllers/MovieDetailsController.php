
<?php

class MovieDetailsController extends MainController{

    public function renderMovieDetails(){
        require '../app/Models/MovieModel.php';
        require '../app/Models/MoviePicturesModel.php';
        require '../app/Models/QuoteModel.php';
        require '../app/Models/MovieCharactersModel.php';

        $id = $_GET['id'];

        $movieModel = new MovieModel();
        $this-> movies = $movieModel -> getMovieById($id);

        $moviePicturesModel = new MoviePicturesModel();
        $this->moviePictures = $moviePicturesModel -> getMoviePictures($id);

        $quoteModel = new QuoteModel();
        $this-> quotes = $quoteModel->getQuotesById($id);

        $movieCharactersModel = new MovieCharactersModel();
        $this->movieCharacters = $movieCharactersModel -> getMovieCharacters($id);

        $this -> render();
    }
}

