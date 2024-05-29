<?php

class DashboardController extends MainController{
    
    public function renderDashboard(){   
        require '../app/Models/CharacterModel.php';  
        require '../app/Models/MovieModel.php';
        require '../app/Models/QuoteModel.php';

        $movieModel = new MovieModel();
        $this-> movies = $movieModel->getMovieLimit(3);

        $quoteModel = new QuoteModel();
        $this -> quotes = $quoteModel->getQuoteLimit(4);

        $characterModel = new CharacterModel();
        $this -> characters = $characterModel->getCharacterLimit(4);

        $this->render();
    }
}