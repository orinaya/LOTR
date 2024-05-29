<?php

class MovieModel{
    private $id;
    private $trilogy_title;
    private $movie_title;
    private $release_date;
    private $realisator;
    private $movie_description;
    private $url_picture;
    private $running_time;
    private $cameo_picture;
    private $cameo_description;
    private $rt_score;


    public function getMovies(){        
        $dbh= DataBase::connectPDO();
        $query = $dbh->prepare('SELECT * FROM movie');
        $query->execute();
        $movies = $query->fetchAll(PDO::FETCH_ASSOC);
        return $movies;
    }

    public function getMoviesByRtDESC() {
        $dbh = DataBase::connectPDO();
        $query = $dbh->prepare('SELECT * FROM movie ORDER BY rt_score DESC');
        $query->execute();
        $movies = $query->fetchAll(PDO::FETCH_ASSOC);
        return $movies;
    }

    public function getMoviesByRtASC() {
        $dbh = DataBase::connectPDO();
        $query = $dbh->prepare('SELECT * FROM movie ORDER BY rt_score ASC');
        $query->execute();
        $movies = $query->fetchAll(PDO::FETCH_ASSOC);
        return $movies;
    }

    public function getMoviesByDateDESC() {
        $dbh = DataBase::connectPDO();
        $query = $dbh->prepare('SELECT * FROM movie ORDER BY release_date DESC');
        $query->execute();
        $movies = $query->fetchAll(PDO::FETCH_ASSOC);
        return $movies;
    }

    public function getMoviesByDateASC() {
        $dbh = DataBase::connectPDO();
        $query = $dbh->prepare('SELECT * FROM movie ORDER BY release_date ASC');
        $query->execute();
        $movies = $query->fetchAll(PDO::FETCH_ASSOC);
        return $movies;
    }


    public function getMovieById($id){
        $dbh= DataBase::connectPDO();
        $query = $dbh->prepare('SELECT *
        FROM `movie` as m 
        WHERE m.id=:id' );
        $query->bindParam(':id', $id, PDO::PARAM_INT);
        $query->execute();
        $movies = $query->fetchAll(PDO::FETCH_ASSOC);
        return $movies;
    }

    public function getMovieLimit($limit){
        $dbh= DataBase::connectPDO();
        $query = $dbh->prepare('SELECT * FROM movie LIMIT :limit');
        $query->bindParam(':limit', $limit, PDO::PARAM_INT);
        $query->execute();
        $movies = $query->fetchAll(PDO::FETCH_ASSOC);
        return $movies;
        
    }
}