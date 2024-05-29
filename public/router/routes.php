<?php 
require '../app/Controllers/DashboardController.php';
require '../app/Controllers/MovieController.php';
require '../app/Controllers/CharacterController.php';
require '../app/Controllers/QuoteController.php';
require '../app/Controllers/ErrorController.php';
require '../app/Controllers/MovieDetailsController.php';
require '../app/Controllers/CharacterDetailsController.php';
require '../app/Controllers/UpdateCharacterController.php';
require '../app/Controllers/UserController.php';
require '../app/Controllers/AdminController.php';

return [
    'dashboard' => [
        'action' => 'renderDashboard',
        'controller' => 'DashboardController',
    ],
    'films' => [
        'action' => 'renderMovie',
        'controller' => 'MovieController',
    ],
    'personnages' => [
        'action' => 'renderCharacter',
        'controller' => 'CharacterController',
    ],
    'citations' => [
        'action' => 'renderQuote',
        'controller' => 'QuoteController',
    ],
    'films-details' =>[
        'action'=>'renderMovieDetails',
        'controller'=> 'MovieDetailsController'
    ],
    'personnages-details'=>[
        'action'=> 'renderCharacterDetails',
        'controller'=>'CharacterDetailsController'
    ],
    'ajouter-un-personnage'=>[
        'action'=> 'renderCharacter',
        'controller'=>'CharacterController'
    ],
    'modifier-un-personnage'=>[
        'action'=> 'renderUpdateCharacter',
        'controller'=>'UpdateCharacterController'
    ],
    'login'=>[
        'action' => 'renderUser',
        'controller' => 'UserController'
    ],
    'register'=>[
        'action' => 'renderUser',
        'controller' => 'UserController'
    ],
    'admin'=>[
        'action' => 'renderAdmin',
        'controller' => 'AdminController'
    ],
    '404' => [
        'action'=> 'render',
        'controller'=> 'ErrorController'
    ],
];