<?php

require_once 'Model/User.php';

class UserController extends User
{
    public function __construct()
    {
    }

    public function isExist($userName, $password)
    {
        return $this->login($userName, $password);
    }

    public function createUserI($userName, $password, $profileImageNew, $firstName, $lastName)
    {
        return $this->setUser($userName, $password, $profileImageNew, $firstName, $lastName);
    }

    public function createUserNoI($userName, $password, $firstName, $lastName)
    {
        return $this->setUser($userName, $password, "default3.png", $firstName, $lastName);
    }

    public function removeUser($id)
    {
        return $this->deleteUser($id);
    }

    public function editUser($id, $password, $profileImageNew, $firstName, $lastName)
    {
        return $this->updateUser($id, $password, $profileImageNew, $firstName, $lastName);
    }

    public function viewUser($ID)
    {
        return $this->getUser($ID);
    }
}