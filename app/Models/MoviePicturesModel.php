<?php

class MoviePicturesModel{
    private $id_movie_pictures;
    private $url_picture;
    private $id_movie;

    public function getMoviePictures($id){
        $dbh= DataBase::connectPDO();
        $query = $dbh->prepare('SELECT *
        FROM `movie_pictures` as mp
        WHERE mp.id_movie=:id;
        ' );
        $query->bindParam(':id', $id, PDO::PARAM_INT);
        $query->execute();
        $moviePictures = $query->fetchAll(PDO::FETCH_ASSOC);
        return $moviePictures;
    }
}
