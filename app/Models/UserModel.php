<?php


class UserModel
{
    private $id;
    private $name;
    private $email;
    private $password;
    private $role;

    public function registerUser()
    {

        $pdo = DataBase::connectPDO();

        $sql = "INSERT INTO `users`(`name`, `email`, `password`,`role`) VALUES (:name,:email,:password,:role)";

        $pdoStatement = $pdo->prepare($sql);
        $params = [
            ':name' => $this->name,
            ':email' => $this->email,
            ':password' => $this->password,
            ':role' => $this->role,
        ];
        $success = $pdoStatement->execute($params);
 
        return $success;
    }

    public function checkEmail()
    {        
        $pdo = DataBase::connectPDO();

        $sql = "SELECT COUNT(*) FROM `users` WHERE `email` = :email";
        
        $query = $pdo->prepare($sql);        
        $query->bindParam(':email', $this->email);
        
        $query->execute();
        $isMail = $query->fetchColumn();             
        return $isMail > 0;
    }

    public static function getUserByEmail($email)
    {

        $pdo = DataBase::connectPDO();

        $sql = '
        SELECT * 
        FROM users
        WHERE email = :email';        
        $query = $pdo->prepare($sql);
        $query->execute([':email' => $email]);
        $result = $query->fetchObject('UserModel');

        return $result;
    }


    public function getId()
    {
        return $this->id;
    }

    public function setId($id)
    {
        $this->id = $id;        
    }

    public function getName()
    {
        return $this->name;
    }

    public function setName($name)
    {
        $this->name = $name;        
    }

    public function getEmail()
    {
        return $this->email;
    }

    public function setEmail($email)
    {
        $this->email = $email;
    }

    public function getPassword()
    {
        return $this->password;
    }

    public function setPassword($password)
    {
        $this->password = $password;
    }

    public function getRole()
    {
        return $this->role;
    }

    public function setRole($role)
    {
        $this->role = $role;
    }
}
