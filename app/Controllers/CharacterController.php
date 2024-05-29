<?php

class CharacterController extends MainController{
    public function renderCharacter(){
        require '../app/Models/CharacterModel.php';
        $characterModel = new CharacterModel();
        $this->characters = $characterModel -> getCharacters();
        $sortType = isset($_POST['sort_type']) ? $_POST['sort_type'] : '';
        $filterType = isset($_POST['filter_type']) ? $_POST['filter_type'] : '';

        switch ($sortType) {
            case "name_desc":
                $this->characters = $characterModel->getCharactersByNameDESC();
                break;
            case "name_asc":
                $this->characters = $characterModel->getCharactersByNameASC();
                break;
            default:
                $this->characters = $characterModel->getCharacters();
        }

        if ($_SERVER["REQUEST_METHOD"] === "POST") {
            if (isset($_POST["addCharacterForm"])) {
                $this->addCharacter();
            }
        }

        $this -> render();
    }

    public function addCharacter(): void {
        $first_name = filter_input(INPUT_POST, 'first_name', FILTER_SANITIZE_SPECIAL_CHARS);
        $last_name = filter_input(INPUT_POST, 'last_name', FILTER_SANITIZE_SPECIAL_CHARS);
        $surname = filter_input(INPUT_POST, 'surname', FILTER_SANITIZE_SPECIAL_CHARS);
        $race = filter_input(INPUT_POST, 'race', FILTER_SANITIZE_SPECIAL_CHARS); 
        $url_picture = filter_input(INPUT_POST, 'url_picture', FILTER_SANITIZE_SPECIAL_CHARS);
        $character_description = filter_input(INPUT_POST, 'character_description', FILTER_SANITIZE_SPECIAL_CHARS);
        $character_title = filter_input(INPUT_POST, 'character_title', FILTER_SANITIZE_SPECIAL_CHARS);
        $weapon = filter_input(INPUT_POST, 'weapon', FILTER_SANITIZE_SPECIAL_CHARS);

        $characterModel = new CharacterModel();
        $characterModel->setFirstName($first_name);
        $characterModel->setLastName($last_name);
        $characterModel->setSurname($surname);
        $characterModel->setRace($race);
        $characterModel->setUrlPicture($url_picture);
        $characterModel->setCharacterDescription($character_description);
        $characterModel->setCharacterTitle($character_title);
        $characterModel->setWeapon($weapon);

        if ($characterModel->insertCharacter()) {
            $this->data[] = '<div class="alert alert-success" role="alert">Personnage ajouté avec succès</div>';
        } else {
            $this->data[] = '<div class="alert alert-danger" role="alert">Une erreur est survenue lors de l\'ajout du personnage</div>';
        }
    }   
}