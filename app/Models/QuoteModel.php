<?php

class QuoteModel{
    private $id;
    private $quote;
    private $url_picture;
    private $id_character;
    private $id_movie;

    public function getQuotes(){        
        $dbh= DataBase::connectPDO();
        $query = $dbh->prepare('SELECT q.quote, q.url_picture, m.trilogy_title, m.movie_title, c.first_name, c.last_name
        FROM `quote` as q
        INNER JOIN movie AS m ON q.id_movie = m.id
        INNER JOIN characters AS c ON q.id_character = c.id
        ;');
        $query->execute();
        $quotes = $query->fetchAll(PDO::FETCH_ASSOC);
        return $quotes;
    }

    public function getQuotesById($id){
        $dbh= DataBase::connectPDO();
        $query = $dbh->prepare('SELECT c.id, c.first_name, c.last_name, q.quote, q.url_picture, q.id, q.id_character, q.id_movie, m.movie_title
        FROM `quote` as q
        INNER JOIN characters AS c ON q.id_character = c.id
        INNER JOIN movie AS m ON q.id_movie = m.id
        WHERE q.id_movie=:id;
        ' );
        $query->bindParam(':id', $id, PDO::PARAM_INT);
        $query->execute();
        $quotes = $query->fetchAll(PDO::FETCH_ASSOC);
        return $quotes;
    }

    public function getQuoteLimit($limit){
        $dbh= DataBase::connectPDO();
        $query = $dbh->prepare('SELECT q.quote, q.url_picture, m.trilogy_title, m.movie_title, c.first_name, c.last_name
        FROM `quote` as q
        INNER JOIN movie AS m ON q.id_movie = m.id
        INNER JOIN characters AS c ON q.id_character = c.id
        LIMIT :limit');
        $query->bindParam(':limit', $limit, PDO::PARAM_INT);
        $query->execute();
        $quotes = $query->fetchAll(PDO::FETCH_ASSOC);
        return $quotes;
    }
}