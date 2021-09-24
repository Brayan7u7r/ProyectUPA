<?php namespace App\Controllers;

use App\Models\UsuarioModel;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\RESTful\ResourceController;

class Auth extends ResourceController
{
    use ResponseTrait;

    public function __construct() {
        $this->model = $this->setModel(new UsuarioModel());
    }

    public function login()
    {
        try 
        {
            $username = $this->request->getPost('username');
            $password = $this->request->getPost('password');

            if($username != null && $password != null){
                $user_log = $this->model->login($username, $password);
                if($user_log == null){
                    return $this->failNotFound('Credenciales invalidas');
                }else{
                    return $this->respond($user_log);
                }
            }else{
                return $this->failNotFound('Credenciales invalidas');
            }
        } 
        catch (\Exception $e) 
        {
            return $this->failServerError('Ha ocurrido un error en el servidor.');
        }
    }
}