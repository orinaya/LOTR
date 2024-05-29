<?php

class UpdateCharacterController extends MainController{

    public function renderUpdateCharacter(){
        require '../app/Models/CharacterModel.php';
        $id = $_GET['id'];
        $characterModel = new CharacterModel();
        $this->characters = $characterModel -> getCharacterById($id);

        if ($_SERVER["REQUEST_METHOD"] === "POST") {
            if (isset($_POST['updateCharacterForm'])) {
                $this->updateCharacter($id);
            }
        }
        $this -> render();
    }


    public function updateCharacter($id): void
    {

        $id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_NUMBER_INT);
        $first_name = filter_input(INPUT_POST, 'first_name', FILTER_SANITIZE_SPECIAL_CHARS);
        $last_name = filter_input(INPUT_POST, 'last_name', FILTER_SANITIZE_SPECIAL_CHARS);
        $surname = filter_input(INPUT_POST, 'surname', FILTER_SANITIZE_SPECIAL_CHARS);
        $race = filter_input(INPUT_POST, 'race', FILTER_SANITIZE_SPECIAL_CHARS); 
        $url_picture = filter_input(INPUT_POST, 'url_picture', FILTER_SANITIZE_SPECIAL_CHARS);
        $character_description = filter_input(INPUT_POST, 'character_description', FILTER_SANITIZE_SPECIAL_CHARS);
        $character_title = filter_input(INPUT_POST, 'character_title', FILTER_SANITIZE_SPECIAL_CHARS);
        $weapon = filter_input(INPUT_POST, 'weapon', FILTER_SANITIZE_SPECIAL_CHARS);

        $characterModel = new CharacterModel();
        $characterModel->setId($id);
        $characterModel->setFirstName($first_name);
        $characterModel->setLastName($last_name);
        $characterModel->setSurname($surname);
        $characterModel->setRace($race);
        $characterModel->setUrlPicture($url_picture);
        $characterModel->setCharacterDescription($character_description);
        $characterModel->setCharacterTitle($character_title);
        $characterModel->setWeapon($weapon);


        if ($characterModel->updateCharacter($id)) {
            $this->data['infos'] = '<div class="alert alert-success" role="alert">Article enregistré avec succès</div>';
        } else {
            $this->data['infos'] = '<div class="alert alert-danger" role="alert">Il s\'est produit une erreur</div>';
        }
    }
}

