<?php namespace App\Controllers;

use App\Models\UsuarioModel;
use CodeIgniter\API\ResponseTrait;

class Auth extends BaseController
{
    use ResponseTrait;

    public function login()
    {
        try 
        {
            $username = $this->request->getPost('username');
            $password = $this->request->getPost('password');

            $usuarioModel = new UsuarioModel();
            $where = ['Usu_usuario' => $username, 'Usu_contrasenia' => $password];
            $validateUsuario = $usuarioModel->where($where)->find();

            if($validateUsuario == null){
                return $this->failNotFound('Usuario y/o contraseña invalido.');
            }
            return $this->respond('Usuario encontrado');    
        } 
        catch (\Exception $e) 
        {
            return $this->failServerError('Ha ocurrido un error en el servidor.');
        }
    }
}