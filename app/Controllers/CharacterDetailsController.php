<?php

class CharacterDetailsController extends MainController{

    public function renderCharacterDetails(){
        require '../app/Models/CharacterModel.php';
        $id = $_GET['id'];
        $characterModel = new CharacterModel();
        $this->characters = $characterModel -> getCharacterById($id);

        if (isset($_POST['deleteCharacterForm'])) {
            $id = $_POST['id'];
            $this->deleteCharacter($id);
        }
        $this -> render();
    }

    public function deleteCharacter($id): void {
        $characterModel = new CharacterModel();
        $id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_NUMBER_INT);
        if ($characterModel->deleteCharacter($id)) {
            $this->data['infos'] =  '<div class="alert alert-success d-inline-block mx-4" role="alert">Personnage supprimé avec succès</div>';
        } else {
            $this->data['infos'] = '<div class="alert alert-danger" role="alert">Une erreur s\'est produite lors de la suppression du personnage</div>';
        }
    }

}

