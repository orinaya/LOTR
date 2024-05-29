<?php

class MovieController extends MainController{

    public function renderMovie(){
        require '../app/Models/MovieModel.php';
        $movieModel = new MovieModel();

        $sortType = isset($_POST['sort_type']) ? $_POST['sort_type'] : '';

        switch ($sortType) {
            case "rt_score_desc":
                $this->movies = $movieModel->getMoviesByRtDESC();
                break;
            case "rt_score_asc":
                $this->movies = $movieModel->getMoviesByRtASC();
                break;
            case "date_desc":
                $this->movies = $movieModel->getMoviesByDateDESC();
                break;
            case "date_asc":
                $this->movies = $movieModel->getMoviesByDateASC();
                break;

            default:
                $this->movies = $movieModel->getMovies();
        }

        $this -> render();
    }
}
