<?php

require '../app/Utils/DataBase.php';
require '../app/Controllers/MainController.php';

$routes = require '../public/router/routes.php';
$page = 'dashboard';
$controller;


if (isset($_GET['page']) && !empty($_GET['page'])){
    $page= $_GET['page'];
}else{
    $page = '404';
};

if (array_key_exists($page, $routes)){
    $controller = $routes[$page]['controller'];
    $action =  $routes[$page]['action'];
}else{
    $controller = 'ErrorController';
}

$controllerInstance = new $controller();
$controllerInstance->setView($page);
$controllerInstance-> $action();
