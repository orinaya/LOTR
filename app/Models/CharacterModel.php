<?php

class CharacterModel{
    private $id;
    private $last_name;
    private $first_name;
    private $surname;
    private $race;
    private $url_picture;
    private $character_description;
    private $character_title;
    private $weapon;
    private $user_id;

    public function getCharacters(){        
        $dbh= DataBase::connectPDO();
        $query = $dbh->prepare('SELECT * FROM characters ORDER BY `characters`.`id` ASC');
        $query->execute();
        $characters = $query->fetchAll(PDO::FETCH_ASSOC);
        return $characters;
    }

    public function getCharactersByNameDESC() {
        $dbh = DataBase::connectPDO();
        $query = $dbh->prepare('SELECT * FROM characters ORDER BY first_name DESC');
        $query->execute();
        $characters = $query->fetchAll(PDO::FETCH_ASSOC);
        return $characters;
    }

    public function getCharactersByNameASC() {
        $dbh = DataBase::connectPDO();
        $query = $dbh->prepare('SELECT * FROM characters ORDER BY first_name ASC');
        $query->execute();
        $characters = $query->fetchAll(PDO::FETCH_ASSOC);
        return $characters;
    }

    public function getCharacterById($id){
        $dbh= DataBase::connectPDO();
        $query = $dbh->prepare('SELECT * FROM characters WHERE id=:id');
        $query->bindParam(':id', $id, PDO::PARAM_INT);
        $query->execute();
        $characters = $query->fetchAll(PDO::FETCH_ASSOC);
        return $characters;
    }

    public function getCharacterLimit($limit){
        $dbh= DataBase::connectPDO();
        $query = $dbh->prepare('SELECT * FROM characters LIMIT :limit');
        $query->bindParam(':limit', $limit, PDO::PARAM_INT);
        $query->execute();
        $characters = $query->fetchAll(PDO::FETCH_ASSOC);
        return $characters;
    }


    public function insertCharacter(): bool
    {
        $pdo = DataBase::connectPDO();
        $sql = "INSERT INTO `characters`(`last_name`, `first_name`, `surname`, `race`, `url_picture`,`character_description`, `character_title`, `weapon`) VALUES (:last_name, :first_name, :surname, :race, :url_picture, :character_description, :character_title, :weapon)";
        $params = [
            'last_name' => $this->last_name,
            'first_name' => $this->first_name,
            'surname' => $this->surname,
            'race' => $this->race,
            'url_picture' => $this->url_picture,
            'character_description' => $this->character_description,
            'character_title' => $this->character_title,
            'weapon' => $this->weapon,
        ];
        $query = $pdo->prepare($sql);
        $queryStatus = $query->execute($params);
        return $queryStatus;
    }


    public function updateCharacter($id): bool
    {
        $pdo = DataBase::connectPDO();
        $sql = "UPDATE `characters` SET `last_name` = :last_name, `first_name` = :first_name, `surname` = :surname, `race` = :race, `url_picture` = :url_picture,`character_description` = :character_description, `character_title` = :character_title, `weapon` = :weapon WHERE id=:id";
        $params = [
            'id' => $this->id,
            'last_name' => $this->last_name,
            'first_name' => $this->first_name,
            'surname' => $this->surname,
            'race' => $this->race,
            'url_picture' => $this->url_picture,
            'character_description' => $this->character_description,
            'character_title' => $this->character_title,
            'weapon' => $this->weapon,
        ];
        $query = $pdo->prepare($sql);
        $queryStatus = $query->execute($params);
        return $queryStatus;
    }

    public function deleteCharacter(int $id): bool
    {
        $pdo = DataBase::connectPDO();
        $sql = "DELETE FROM `characters` WHERE id=:id";
        $query = $pdo->prepare($sql);
        $query->bindParam(':id', $id, PDO::PARAM_INT);
        $queryStatus = $query->execute();
        return $queryStatus;
    }

    public function selectCharacter(){
        $dbh= DataBase::connectPDO();
        $query = $dbh->prepare('SELECT first_name FROM characters ORDER BY first_name ASC');
        if(isset($_GET['q']) AND !empty($_GET['q'])) {
            $q = htmlspecialchars($_GET['q']);
            $characters = $dbh->query('SELECT first_name FROM characters WHERE first_name LIKE "%'.$q.'%" ORDER BY id DESC');
         }
        $query->execute();
        $characters = $query->fetchAll(PDO::FETCH_ASSOC);
        return $characters;
    }
    
    public function getId()
    {
        return $this->id;
    }

    public function setId($id)
    {
        $this->id = $id;
    }

    public function getFirstName()
    {
        return $this->first_name;
    }

    public function setFirstName($first_name)
    {
        $this->first_name = $first_name;
        
    }

    public function getLastName()
    {
        return $this->last_name;
    }

    public function setLastName($last_name)
    {
        $this->last_name = $last_name;
    }

    public function getSurname()
    {
        return $this->surname;
    }

    public function setSurname($surname)
    {
        $this->surname = $surname;
    }

    public function getRace()
    {
        return $this->race;
    }

    public function setRace($race)
    {
        $this->race = $race;
    }
    
    public function getUrlPicture()
    {
        return $this->url_picture;
    }

    public function setUrlPicture($url_picture)
    {
        $this->url_picture = $url_picture;
    }

    public function getCharacterDescription()
    {
        return $this->character_description;
    }

    public function setCharacterDescription($character_description)
    {
        $this->character_description = $character_description;
    }

    public function getCharacterTitle()
    {
        return $this->character_title;
    }

    public function setCharacterTitle($character_title)
    {
        $this->character_title = $character_title;
    }

    public function getWeapon()
    {
        return $this->weapon;
    }

    public function setWeapon($weapon)
    {
        $this->weapon = $weapon;
    }

    public function getUserId()
    {
        return $this->user_id;
    }

    public function setUserId($user_id)
    {
        $this->user_id = $user_id;
        
    }




}