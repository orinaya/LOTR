<?php

class MovieCharactersModel{
    private $id_movie_characters;
    private $id_movie;
    private $id_character;

    public function getMovieCharacters($id){
        $dbh= DataBase::connectPDO();
        $query = $dbh->prepare('SELECT c.first_name, c.last_name, m.trilogy_title, m.movie_title, c.url_picture "character_picture" 
            FROM `movie_characters` as mc
            INNER JOIN characters as c ON mc.id_character = c.id
            INNER JOIN movie as m ON mc.id_movie = m.id
            WHERE mc.id_movie=:id;
        ' );
        $query->bindParam(':id', $id, PDO::PARAM_INT);
        $query->execute();
        $moviePictures = $query->fetchAll(PDO::FETCH_ASSOC);
        return $moviePictures;
    }

}
