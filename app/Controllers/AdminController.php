<?php

class AdminController extends MainController
{
    public function renderAdmin(): void
    {
        require '../app/Models/CharacterModel.php';

        if ($_SERVER["REQUEST_METHOD"] === "POST") {

            if (isset($_POST["addCharacterForm"])) {
                $this->addCharacter();
            }
       
            if (isset($_POST['deleteCharacterForm'])) {
                $id = $_POST['id'];
                $this->deleteCharacter($id);
            }
            
            if (isset($_POST['updateCharacterForm'])) {
                $this->updateCharacter($id);
            }
            
        }

        $this->viewType = 'admin';
        $characterModel = new CharacterModel();

        if (isset($this->subPage)) {
            $this->view = $this->subPage;
            if ($this->view === 'update') {
                if (isset($_GET['id'])) {
                    $characters = $charactersModel->getCharacterById($_GET['id']);
                    if (is_null($characters)) {
                        $this->data['error'] = '<div class="alert alert-danger" role="alert">L\'article n\'existe pas</div>';
                    } else {
                        $this->data['characters'] = $characters;
                    }
                }
                // 
            }
        } else {        
       
            $this->data['characters'] = $charactersModel->getCharacters();
        }

        $this->render();
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

    public function deleteCharacter($id): void {
        $characterModel = new CharacterModel();
        $id = filter_input(INPUT_POST, 'id', FILTER_SANITIZE_NUMBER_INT);
        if ($characterModel->deleteCharacter($id)) {
            $this->data['infos'] = '<div class="alert alert-success d-inline-block mx-4" role="alert">Personnage supprimé avec succès</div>';
        } else {
            $this->data['infos'] = '<div class="alert alert-danger" role="alert">Une erreur s\'est produite lors de la suppression du personnage</div>';
        }
    }
}
