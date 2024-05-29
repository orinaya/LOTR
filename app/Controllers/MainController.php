<?php


class MainController{
    protected $view;
    protected $id;
    protected $movies;
    protected $characters;
    protected $quotes;
    protected $moviePictures;
    protected $movieCharacters;

    protected $viewType = 'front';
    protected $subPage;

    public function render() {
        $this->view = $this->getView();
        $base_uri = explode('/public/',$_SERVER['REQUEST_URI']);
        $movies= $this->movies;
        $moviePictures = $this->moviePictures;
        $movieCharacters = $this->movieCharacters;
        $characters= $this->characters;
        $quotes= $this->quotes;
        $id= $this-> id;

        require '../app/views/front/layouts/sideBar.phtml';
        require'../app/views/front/partials/'. $this->view .'.phtml';
        require '../app/views/front/layouts/footer.phtml';
    }

    public function getView(){
        return $this->view;
    }

    public function setView($view):self {
        $this->view = $view;
        return $this;
    }

    public function getSubPage(): string
    {
        return $this->subPage;
    }
    
    public function setSubPage(?string $value): void
    {
        $this->subPage = $value;
    }

    
    public function getId()
    {
        return $this->id;
    }

    public function setId($id)
    {
        $this->id = $id;


    }
}